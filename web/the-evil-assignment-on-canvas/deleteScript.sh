#!/bin/bash
while :
do	
find ./html/uploads/* -type f -mmin +2 -exec rm {} \;
done
