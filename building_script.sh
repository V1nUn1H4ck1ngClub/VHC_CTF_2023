#!/bin/bash
readonly ORIGINAL_PATH=$(pwd);

function build_script () {
    # $1: category
    # $2: challenge name
    cd $ORIGINAL_PATH/$1/$2;
    docker-compose up -d;
}

# Add your challenge here if you want to build it
# Programming 
build_script "programming" "blindfold"

# Pwn
build_script "pwn" "vulnsis"
# Web
build_script "web" "weliketoshop"
cd ~/VHC_CTF_2023/web/garden-ramsay/src
docker run -d -p 19024:80 --name garden-ramsay -v "$PWD":/var/www/html php:apache
# Crypto
build_script "crypto" "eta"
build_script "crypto" "curve_my_grade"
# Reverse 

# Forensic
build_script "forensics" "hidden-web"