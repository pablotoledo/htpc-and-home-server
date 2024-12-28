#!/bin/bash

# The idea of this script is having an environment ready to work with docker and define the NAS-Casa solution

# This script will install Docker in a Ubuntu 22.04 LTS server
# Using https://get.docker.com without user interaction

# check if user is root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# check if docker is already installed
if [ -x "$(command -v docker)" ]; then
    echo "Docker is already installed"
    exit
fi

# check if curl is installed
if [ ! -x "$(command -v curl)" ]; then
    echo "curl is not installed"
    exit
fi

# Download the Docker install script
curl -fsSL https://get.docker.com -o get-docker.sh

# Run the Docker install script without user interaction
sh get-docker.sh


# update 
sudo apt update && sudo apt upgrade -y

# install docker-compose non-interactively
sudo apt install docker-compose -y

# install net-tools
sudo apt install net-tools -y

# install snapd
sudo apt install snapd -y

# install firefox
sudo apt install firefox -y

# install git
sudo apt install git -y

# install vscode 
sudo snap install --classic code

# define Europe/Madrid timezone
sudo timedatectl set-timezone Europe/Madrid

# define spanish keyboard
sudo sed -i 's/XKBLAYOUT="us"/XKBLAYOUT="es"/g' /etc/default/keyboard



