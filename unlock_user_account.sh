#!/bin/bash

if [ $# -ne 1 ]; then
    echo "usage: $0 <username>"
    exit 1
fi 

username=$1

passwd -u $username

echo "Account of user $username has been unlocked"