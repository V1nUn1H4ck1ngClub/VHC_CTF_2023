# SuperShy

## Description

I'm super shy, super shy,

But wait a minute while I make you hide, make you hide :3

> Flag format: `VHC2023{<your password goes here>}`

## Guide:

1. This challenge encrypts the password as:

Caesar +13 -> XOR with 0x2A -> Base64 with alphabet **"ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz+/"**

2. Reverse the file, take our encrypted password and decrypt by reversing the process.

