if [$# -ne 2 ]; then
echo "Usage: $0 <username> <groupname>"
exit 1

fi
username=$1
groupname=$2

# add the user to the group
usermod -1 -G $groupname $username

echo "User $username added to group $groupname"

