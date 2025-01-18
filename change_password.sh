if [$# -ne 2 ]; then
    echo "Usage: $: $0 <username> <new_password>"
    exit
fi

username=$1
new_password=$2

echo "$username:$new_password" | chpasswd
echo "Password changed for user $username"