#!/bin/bash

sudo apt update -y 
sudo apt dist-upgrade -y
sudo apt autoremove -y
sudo apt install ansible sshpass -y
ssh-keygen
