#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

source ../CONFIG.sh;

hcloud server ssh HealthNexus -i $PATH_SSH_KEY

# Create the Ansible user and add to sudo group
adduser $USERNAME_ANSIBLE;
adduser $USERNAME_ANSIBLE sudo;

# Create .ssh directory for Ansible user
sudo mkdir -p /home/$USERNAME_ANSIBLE/.ssh;
sudo chmod 700 /home/$USERNAME_ANSIBLE/.ssh;

# Copy your public SSH key to the Ansible user's authorized_keys, then
sudo chmod 600 /home/$USERNAME_ANSIBLE/.ssh/authorized_keys
sudo chown -R $USERNAME_ANSIBLE:$USERNAME_ANSIBLE /home/$USERNAME_ANSIBLE/.ssh

# # Allow passwordless sudo for the Ansible user
# echo "$USERNAME_ANSIBLE ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$USERNAME_ANSIBLE
# sudo chmod 440 /etc/sudoers.d/$USERNAME_ANSIBLE

echo "Ansible user $USERNAME_ANSIBLE has been created and configured."
