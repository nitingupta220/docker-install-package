#!/usr/bin/env bash

# First, update your existing list of packages:
sudo apt-get update

# Older versions of Docker were called docker, docker.io , or docker-engine. If these are installed, uninstall them:
sudo apt-get remove docker docker-engine docker.io containerd runc

# Update the list of packages again:
sudo apt-get update

# Next, install a few prerequisite packages which let apt use packages over HTTPS:
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# Then add the GPG key for the official Docker repository to your system:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

# Update the packages
sudo apt-get update

# Make sure you are about to install from the Docker repo instead of the default Ubuntu repo:
apt-cache policy dcoker-ce

# Install the latest version of Docker CE and containerd
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Verify that Docker CE is installed correctly by running the hello-world image.
sudo docker run hello-world

# Run this command to download the latest version of Docker Compose:
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permissions to the binary:
sudo chmod +x /usr/local/bin/docker-compose

# Test the installation
docker-compose --version
