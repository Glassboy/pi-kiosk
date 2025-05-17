#!/bin/bash
# ---------------------------------------------------
# Script Name: prequel.sh
# Description: Updates packages and instlls Ansible on Raspberry Pi
# Author: Robert Singers
# Date: 2025-04-05
# Version: 1.0
# ---------------------------------------------------

sudo apt update && sudo apt upgrade -y
sudo apt install -y software-properties-common
sudo apt install -y python3-apt python3-pip
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible sshpass
sudo apt install -y git
sudo apt autoremove

git clone https://github.com/Glassboy/pi-kiosk.git ~/pi-kiosk-build