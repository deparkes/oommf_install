#!/bin/bash -e
# $1 = oommf source
# $2 = tcl/tk version e.g. 8.6
 
echo "Installing "$1
echo "With tcl/tk"$2

# Update apt
sudo apt-get update -y

# Install a desktop environments
sudo apt-get install --no-install-recommends lubuntu-desktop -y

# OOMMF compilation needs g++ from build-essential package
sudo apt-get install build-essential -y
 
# Install tcl/tk dev packages
sudo apt-get install tcl$2-dev -y
sudo apt-get install tk$2-dev -y
 
# need base tcl to be installed to run
sudo apt-get install tcl -y
 
# Download and unpack oommf version
wget -qO- $1 | tar xvz
 
# Build OOMMF
cd ./oommf
tclsh oommf.tcl pimake distclean
tclsh oommf.tcl pimake

# Change folder permissions
sudo chown -R vagrant /home/vagrant/oommf