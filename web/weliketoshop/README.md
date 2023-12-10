# Flag Seller

## 1. Description

Welcome to VHC's Shopping Mail! Our digital market is aimed to beat all Lozodo, Seehop and all the marketplace out there! Can you imagine how a "passwordless", and even "usernameless" marketplace could be such a greatttt invention??

For this one and only 9/12 sale, we will discount allll the things for you to buy!

Enjoyyy!!!!

### Guide: 
1. Turn on your Docker instance. 
2. Access: `http://14.225.211.39:$PORT` where `$PORT` is the port number given by the system.
3. pwn!

### Notes
+ The `revert` button only refresh the Docker instance for you, not to be used for deleting the containers.
+ Because of performance-critical reasons, we will shut down all of the containers periodically (2-4 hours). We will put announcement when we nuke all of the containers :)

Author: `@Thanh-Wutan`

## 2. Build

```bash
docker build -t flag_seller . 
```

This is a `docker-dynamic` challenge, aka it's required a request to create a container from image.

## 3. Solution

+ You must know a discount code `THANKYOU` can be a reduction of 90% for all products.
+ The `gift` product give you a code to gain 100$, though it costs 100$. 
+ But if you buy `gift` with `THANKYOU` code, you can get 100$ with 90$, stonks!
+ Repeat it until you have enough money to buy `flag` product.
+ Can be automated by `selenium` or `puppeteer` or `requests` or `curl` or `wget` or `...`

At first we put the flag is 10000 :))))