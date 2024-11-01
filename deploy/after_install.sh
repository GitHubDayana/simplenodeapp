#!/bin/bash

# Update package list
sudo yum update -y

# Install Node.js and npm (use a specific version if required)
curl -sL https://rpm.nodesource.com/setup_18.x | sudo -E bash -
sudo yum install -y nodejs

# Verify installation
node -v
npm -v

cd /home/ubuntu/simple-nodejs-app

npm install
