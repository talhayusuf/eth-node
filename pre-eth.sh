#!/bin/bash

# Update and upgrade packages
sudo apt update && sudo apt upgrade -y

# Install docker-compose
sudo apt install -y docker-compose

# Enable and start Docker service
sudo systemctl enable --now docker

# Check Docker Compose version
docker-compose --version

# Clone the repository
cd /home/ubuntu
git clone https://github.com/talhayusuf/eth-node.git
cd eth-node

# Generate JWT secret
openssl rand -hex 32 | tr -d "\n" > "jwtsecret"
cat jwtsecret ; echo
