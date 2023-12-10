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

It's just a vanilla PHP file upload =))) You can either up a code to have a RCE or reverse shell. 