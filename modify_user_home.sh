#!bin/bash

#check if both username and new home directory are provided

if [$# -ne 2 ]; then
    echo "Usage: $0 <username> <new_home_directory>"
    exit 1
fi 
username=$1
username=$2
# Change the user's home direcotory

usermod -d $new_home $username

echo "Home directory for user $username changed to $new_home"