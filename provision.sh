#!/bin/bash

# Update the souces list
sudo apt-get update -y

# Upgrade any packages available
sudo apt-get upgrade -y

# Install the git 
apt-get install git -y

# Older versions of Docker were called docker or docker-engine. 
# If these are installed, uninstall them:
sudo apt-get remove docker docker-engine

# Unless you have a strong reason not to, 
# install the linux-image-extra-* packages, 
# which allow Docker to use the aufs storage drivers.
sudo apt-get install \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual

# install docker
sudo apt-get install docker.io -y



sudo echo 'auto docker0
iface docker0 inet static
      address 192.168.10.102
      netmask 255.255.255.0' >> /etc/network/interfaces

sudo ifup docker0


# Install the package for nginx
# sudo apt-get install nginx -y

# install node.js  version 7
# sudo npm cache clean -f
# sudo apt-get install -y nodejs

# install node.js  version 7
 # curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
 # sudo apt-get install -y nodejs


# install the pm2 from npm
# sudo npm install -g pm2

