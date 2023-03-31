#!/bin/bash

aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID && aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY && aws configure set default.region $AWS_DEFAULT_REGION
url=$(echo "$1" | cut -d'?' -f1)
filename=$(basename "$url")
wget -O $filename $1
backgroundremover -i $filename -o output.png
aws s3 cp output.png s3://$2
rm $filename
rm output.png
