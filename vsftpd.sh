#!/bin/bash

# Update package list
sudo apt-get update

# Install vsftpd
sudo apt-get install vsftpd -y

# Backup original config file
sudo cp /etc/vsftpd.conf /etc/vsftpd.conf.bak

# Configure vsftpd
sudo sed -i 's/#write_enable=YES/write_enable=YES/g' /etc/vsftpd.conf
sudo sed -i 's/#chroot_local_user=YES/chroot_local_user=YES/g' /etc/vsftpd.conf
sudo sed -i 's/#user_sub_token=/user_sub_token=/g' /etc/vsftpd.conf
sudo sed -i 's/#local_root=/local_root=/g' /etc/vsftpd.conf
sudo sed -i 's/#force_dot_files=YES/force_dot_files=YES/g' /etc/vsftpd.conf

# Restart vsftpd
sudo systemctl restart vsftpd

echo "vsftpd installation and configuration complete."
