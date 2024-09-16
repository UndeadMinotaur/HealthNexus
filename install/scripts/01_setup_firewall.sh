#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

source ../CONFIG.sh;

# just a reminder to later on set the firewall
# hcloud firewall create --name firewall_ssh
# hcloud firewall add-rule firewall_ssh --direction in --source-ips "0.0.0.0/0" --protocol tcp --port 22
# hcloud firewall apply-to-resource firewall_ssh --server $APP --type server
