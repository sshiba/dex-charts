#!/bin/bash

set -ex
# Install VirtualBox
sudo apt-get update
sudo apt-get install virtualbox -y

# Install Vagrant
sudo apt-get update
curl -O https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.deb
sudo apt-get install ./vagrant_2.2.6_x86_64.deb

vagrant --version

# Install support for RDP
sudo apt-get update && sudo apt-get upgrade -y

# install basic terminal tools
sudo apt-get install tmux git ranger vim -y

# Installing LXDE
sudo apt-get install lubuntu-desktop -y

# install xrdp
sudo apt-get install xrdp -y

# start the xrdp service
sudo systemctl start xrdp
