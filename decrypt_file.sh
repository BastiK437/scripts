#!/bin/sh

read -p "Enter file path to decrypt from /home/user/" INPUT
FILE_TO_DECRYPT=$HOME"/"$INPUT

NEW_FILE=${FILE_TO_DECRYPT::-4}

openssl aes-256-cbc -d -a -iter 5 -in $FILE_TO_DECRYPT -out $NEW_FILE 
