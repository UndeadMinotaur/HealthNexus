#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

source ../CONFIG.sh;

hcloud server ssh HealthNexus -i $PATH_SSH_KEY

adduser nginx sudo
# Full Name []: Nginx OS User

su nginx;
cd /opt;

sudo apt install nginx;
sudo systemctl start nginx;
