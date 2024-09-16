#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

source ../CONFIG.sh;

# Create an API Token via web interface of hoster

# Prerequisites Hetzner
ssh-keygen -t ecdsa -b 521 -f $PATH_SSH_KEY

# Hetzner setup
hcloud context create $APP;
hcloud ssh-key create --name $HCLOUD_SSH_KEY --public-key-from-file $PATH_SSH_KEY.pub;
hcloud server create --name $APP --type $HCLOUD_TYPE --location $HCLOUD_LOCATION --image $IMAGE --ssh-key $HCLOUD_SSH_KEY;
hcloud server ssh HealthNexus -i $PATH_SSH_KEY
