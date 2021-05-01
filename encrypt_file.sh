#!/bin/sh

read -p "Enter file path to encrypt from /home/user/" INPUT
FILE_TO_ENCRYPT=$HOME"/"$INPUT

openssl aes-256-cbc -a -salt -iter 5 -in $FILE_TO_ENCRYPT -out $FILE_TO_ENCRYPT.enc
