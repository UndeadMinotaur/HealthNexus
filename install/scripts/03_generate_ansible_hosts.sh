#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

source CONFIG.sh;
HEALTHNEXUS_IP=$(hcloud server ip $APP);

# Delete config
rm ${PATH_ANSIBLE_CONFIG_HOSTS};

# Populate config
touch ${PATH_ANSIBLE_CONFIG_HOSTS};
echo "[healthnexus_server]" >> ${PATH_ANSIBLE_CONFIG_HOSTS};
echo "$HEALTHNEXUS_IP ansible_user=${USERNAME_ANSIBLE} ansible_ssh_private_key_file=${PATH_SSH_KEY_ANSIBLE}" >> ${PATH_ANSIBLE_CONFIG_HOSTS};
