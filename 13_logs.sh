#!/bin/bash

logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}.${1}.sh"
user_id=$(id -u)


if [ $user_id -ne 0 ]; then
    echo "Please run this script with sudo access.."
    exit 1
fi

mkdir -p $logs_folder

echo "Script started execution at $(date +"%F %T")" &>> $logs_file

validate(){
    if [ $1 -ne 0 ]; then
        echo "${2}..FAILED" | tee -a $logs_file
        exit 1
    else
        echo "${2}..SUCCESS" | tee -a $logs_file
    fi
}

apt install nginx -y &>> $logs_file
validate $? "Nginx Installation"

echo "Script execution completed at $(date +"%F %T")" &>> $logs_file