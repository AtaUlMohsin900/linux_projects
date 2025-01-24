#!/bin/bash

# Check if a username present

if [$# -ne 1 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

username=$1

# Delete the user and its home directory

userdel -r $username

echo "User $username deleted successfully and also its directory"