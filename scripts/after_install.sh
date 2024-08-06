#!/bin/bash

# Change working directory
cd /home/ubuntu/server

# Remove unused code
rm -rf node_modules
rm -rf build

# Install code modules and make React build
npm install
npm run build
