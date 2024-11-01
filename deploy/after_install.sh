#!/bin/bash

# Install Node.js and npm if not already installed
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.nvm/nvm.sh
nvm install node

# Make npm globally accessible in this session
export PATH=$PATH:/root/.nvm/versions/node/$(nvm version)/bin

# Verify npm installation
npm -v

cd /home/ubuntu/simple-nodejs-app

npm install
