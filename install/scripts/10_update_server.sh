#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

source ../CONFIG.sh;

hcloud server ssh HealthNexus -i $PATH_SSH_KEY


# then
apt-get update;
apt-get upgrade;
reboot;
