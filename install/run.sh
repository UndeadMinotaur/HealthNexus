#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

for script in $(ls ./scripts); do
    chmod u+x ./scripts/$script;
#     ./scripts/$script;
done
