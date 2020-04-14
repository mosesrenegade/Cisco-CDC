#!/bin/bash

sudo apt update -y 
sudo apt dist-upgrade -y
sudo apt autoremove -y
sudo apt install ansible sshpass python3-winrm -y
ssh-keygen
echo 'Copying Key to infra'
ssh-copy-id dcloud@198.18.133.5
echo 'Copying Key to Kali'
ssh-copy-id root@198.18.133.6
ansible-playbook -i inventory cdc.yml
