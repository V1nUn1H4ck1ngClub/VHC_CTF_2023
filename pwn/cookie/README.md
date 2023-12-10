# Cookie 

## 1. Description

bet you know, bet you know, bet you know I

I am making my cookie so harddd, yah!

### Guide: 
1. Turn on your Docker instance. 
2. Access: `ssh vhc_guest@14.225.211.39 -p$PORT` where `$PORT` is the port number given by the system (password: vhc_guest).
3. pwn!

### Notes
+ The `revert` button only refresh the Docker instance for you, not to be used for deleting the containers.
+ Because of performance-critical reasons, we will shut down all of the containers periodically (2-4 hours). We will put announcement when we nuke all of the containers :)

Author: `@h114mx001` & `@sashaNull`

## 2. Build

```bash
docker build -t cookie . 
```

This challenge is `docker-dynamic`, aka it's required a request to create a container from image. 

## 3. Solution

1. Make a hardlink to `cookie`, remember to make it have different name with `cookie` (e.g. `c00k13`).

```bash
ln -s cookie c00k13
```

2. Run `./cookie_seller`

```bash
./cookie_seller c00k13
```