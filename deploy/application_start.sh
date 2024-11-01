#!/bin/bash

# Ensure Node.js and npm are installed (if they aren’t already from a previous step)
curl -sL https://rpm.nodesource.com/setup_18.x | sudo -E bash -
sudo yum install -y nodejs

# Install pm2 globally
sudo npm install -g pm2

# Verify pm2 installation
pm2 -v


cd /home/ubuntu/simple-nodejs-app
pm2 delete server
pm2 start server.js
