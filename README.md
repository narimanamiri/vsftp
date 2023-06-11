# vsftpd
this script installs and configures vsftp server
Here is an example Bash script that installs and configures vsftpd FTP server on a Linux system:

```
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
```

Here's how the script works:

1. The script starts by updating the package list using the `apt-get update` command.
2. The script installs vsftpd FTP server using the `apt-get install` command with the `-y` flag to automatically answer "yes" to any prompts.
3. The script creates a backup of the original vsftpd configuration file using the `cp` command.
4. The script uses the `sed` command to make changes to the vsftpd configuration file. In this example, the script enables write access, allows chroot for local users, and sets the root directory for user home directories.
5. The script restarts the vsftpd service using the `systemctl restart` command.
6. The script prints a message indicating that the installation and configuration is complete.

Note that this script assumes that you are running a Debian or Ubuntu-based Linux distribution. If you are using a different Linux distribution, you may need to modify the script to use a different package manager or configuration file location.
