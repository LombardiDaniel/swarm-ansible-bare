#!/bin/bash

registry_password=""
# Check if an argument was provided
if [ $# -lt 1 ]; then
  # Set default password
  registry_password="adminPass"
else
  # Use the provided argument as the password
  registry_password=$1
fi

# We need double "$" so that docker-compose escapes it correctly

echo $(htpasswd -nb admin registry_password) | sed -e s/\\$/\\$\\$/g