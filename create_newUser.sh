#!bin/bash

# Check if both username and password are provided

if [ $# -ne 2 ]; then
    echo "Usage: $0 <username> <password>"
    exit 1
fi

username=$1
password=$2

# Create new user
useradd -m -s /bin/bash $username

# Set a user's password
    echo "$username:$password" | chpasswd

    echo "User $username created successfully in home directory /home/$username and defult shell /bin/bash"