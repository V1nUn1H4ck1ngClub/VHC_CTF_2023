# Damn Vulnerable Student Information System (Author: [sashaNull](https://github.com/sashaNull))

## 1. Description:
Oh no, it's that time of year again for course registration, and Sasha, the Software Engineer, is facing a bit of a situation. The SIS for VinUni is still a work in progress thanks to Sasha's procrastination.

Unfortunately, the SIS currently has only one single function – it can only return the Cohort number based on the Student ID. Making matters worse, even this basic functionality is causing crashes for students.

Can you assist Sasha in identifying and fixing the bug? Seriously, he's got to do some soul-searching to decide if this coding path is really for him. His life is nothing but pain and suffering... :'(

nc [host ip] [port]

- **Attached File**: vulnSIS, vulnSIS.c

- **Flag**: VHC2023{4_l33t_h4ck3r_ju5t_pwn3d_th31r_c0h0rt!}


## 2. Deploy:

Edit `ctf.xinetd` and `Dockerfile` to replace the port number according to your needs.

- **Build**:

```bash
docker build -t "vulnsis" .
```
- **Run**:

```bash
docker run -d -p "0.0.0.0:[port_num]:[port_num]" -h "vulnsis" --name="vulnsis" vulnsis
```

`port_num` is the port you want to expose to the public network.

## 3. Write-up:
TODO...
