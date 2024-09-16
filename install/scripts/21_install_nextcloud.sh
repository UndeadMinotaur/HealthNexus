#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

source ../CONFIG.sh;

hcloud server ssh HealthNexus -i $PATH_SSH_KEY

adduser nextcloud;
# e.g.
# Enter the new value, or press ENTER for the default
#        Full Name []: Nextcloud OS User
#        Room Number []: 
#        Work Phone []: 
#        Home Phone []: 
#        Other []: 
# confirm with
# cat /etc/passwd | tail -n1

adduser nextcloud sudo;
su nextcloud
cd /opt;

# Official documentation:
# https://docs.nextcloud.com/server/latest/admin_manual/installation/source_installation.html
# Nextcloud AIO
# because we are all spoonies

curl -fsSL https://get.docker.com | sudo sh

# Enable IPv6 support
# https://github.com/nextcloud/all-in-one/blob/main/docker-ipv6-support.md

sudo vim /etc/docker/daemon.json
#{
#  "default-network-opts": {"bridge":{"com.docker.network.enable_ipv6":"true"}}
#}

sudo systemctl restart docker;


# Before running this command, a domain name is required.
sudo docker run \
--init \
--sig-proxy=false \
--name nextcloud-aio-mastercontainer \
--restart always \
--publish 4480:4480 \
--publish 8080:8080 \
--publish 8443:8443 \
--volume nextcloud_aio_mastercontainer:/mnt/docker-aio-config \
--volume /var/run/docker.sock:/var/run/docker.sock:ro \
nextcloud/all-in-one:latest