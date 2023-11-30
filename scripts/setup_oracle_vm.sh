#!/bin/bash

set -e

sudo apt-get update -y
sudo NEEDRESTART_MODE=a apt-get upgrade -y

# Docker Swarm:
sudo apt-get install vim cron apache2-utils -y
curl -fsSL https://get.docker.com -o get-docker.sh
chmod +x get-docker.sh
sudo ./get-docker.sh
rm get-docker.sh

sudo usermod -aG docker $USER
sudo usermod -aG docker $REMOTE_USER

echo "docker installed successfully"