#!/bin/bash
# Auther : Lalatendu K Swain
# Path to the file containing usernames
usernames_file="usernames.txt"

# Check if the usernames file exists
if [ ! -f "$usernames_file" ]; then
    echo "Usernames file not found: $usernames_file"
    exit 1
fi

# Array to store usernames
declare -a users=()

# Read usernames from file and populate the array
while IFS= read -r line; do
    users+=("$line")
done < "$usernames_file"

# Set the passphrase
passphrase="123456789"

# Function to generate SSH key pair with passphrase
generate_ssh_key() {
    local user=$1
    local key_name=$2

    echo "Generating SSH key pair for $user"
    ssh-keygen -t ed25519 -b 4096 -C "Login to Prod Server from $user SYSTEM" -N "$passphrase" -f ~/.ssh/$key_name
}

# Main script
for user in "${users[@]}"; do
    key_name="${user}_key"
    generate_ssh_key "$user" "$key_name"
done
