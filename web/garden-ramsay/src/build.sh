#!/bin/bash
docker rm -f garden-ramsay
docker build --tag=garden-ramsay . && \
docker run -d -p 19024:80 --name garden-ramsay -v "$PWD":/var/www/html php:apache
