#!/bin/bash

# Ask for the remote IP address and user
read -p "Enter the remote IP address: " ip_address
read -p "Enter the remote user: " remote_user

# Create the inventory.ini file with the provided information
echo "arch ansible_host=$ip_address ansible_user=$remote_user" > inventory.ini

# Execute the playbook
ansible-playbook -i inventory.ini install-apps.yml --ask-become-pass --ask-pass
