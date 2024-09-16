#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

source CONFIG.sh;
HEALTHNEXUS_IP=$(hcloud server ip $APP);

# Delete config
rm ${PATH_ANSIBLE_CONFIG_INVENTORY};

# Populate config
touch ${PATH_ANSIBLE_CONFIG_INVENTORY};
echo "[healthnexus_server]" >> ${PATH_ANSIBLE_CONFIG_INVENTORY};
echo "healthnexus ansible_host=$HEALTHNEXUS_IP" >> ${PATH_ANSIBLE_CONFIG_INVENTORY};
echo "" >> ${PATH_ANSIBLE_CONFIG_INVENTORY};

echo "[all:vars]" >> ${PATH_ANSIBLE_CONFIG_INVENTORY};
echo "ansible_user=${USERNAME_ANSIBLE}">> ${PATH_ANSIBLE_CONFIG_INVENTORY};
echo "ansible_ssh_private_key_file=${PATH_SSH_KEY_ANSIBLE}" >> ${PATH_ANSIBLE_CONFIG_INVENTORY};
echo "" >> ${PATH_ANSIBLE_CONFIG_INVENTORY};
