#!/bin/bash

echo "Please enter your username::"
read -s USER_NAME # Here USER_NAME is the variable that takes the values from what you enter

echo "Please enter your password::"
read -s PASSWORD #if you give -s what you are typing will be masked

echo "Username is: $USER_NAME Password is: $PASSWORD"