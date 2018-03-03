#!/bin/bash -e

 
echo "Installing Lubuntu Desktop"

# Update apt
sudo apt-get update -y

# Install a desktop environments
sudo apt-get install --no-install-recommends lubuntu-desktop -y