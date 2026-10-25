#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "Please run this script with sudo access.."
    exit 1
fi

validate(){
    if [ $1 -ne 0 ]; then
        echo "${2}..failed"
        exit 1
    else
        echo "${2}..Success"
    fi
}

echo "proceeding...."
apt install nginx -y
validate $? "Ngnix installation"

echo "Still proceeded..."