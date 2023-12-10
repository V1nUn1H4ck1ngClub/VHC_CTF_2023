#!/bin/bash
sudo docker rm -f the-evil-assignment-on-canvas
sudo docker build . -t the-evil-assignment-on-canvas --no-cache
sudo docker run -d -v "$PWD/data:/data" -p 13373:80 --name the-evil-assignment-on-canvas the-evil-assignment-on-canvas
