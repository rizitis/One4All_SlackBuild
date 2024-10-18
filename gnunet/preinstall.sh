#!/bin/sh

# This script sets up necessary groups and users for GNUnet, this script executed manually BEFORE run SlackBuild as root.
# 

# Check if the script is run as root; if not, print a message and exit.
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script as root."
    exit 1
fi

# Add special group gnunetdns for controlling access to "gnunet-helper-dns".
# The 'groupadd' command is used for creating a new group in Slackware.
if ! getent group gnunetdns > /dev/null; then
    groupadd gnunetdns
    echo "Group 'gnunetdns' created."
else
    echo "Group 'gnunetdns' already exists."
fi

# Add system group gnunet if it doesn't exist.
if ! getent group gnunet > /dev/null; then
    groupadd gnunet
    echo "Group 'gnunet' created."
else
    echo "Group 'gnunet' already exists."
fi

# Add system user 'gnunet' for running services, with no login shell.
# The user will have /var/lib/gnunet as their home directory.
if ! id -u gnunet > /dev/null 2>&1; then
    useradd -r -d /var/lib/gnunet -s /bin/false gnunet
    echo "User 'gnunet' created."
else
    echo "User 'gnunet' already exists."
fi

# Add user 'gnunet' to the 'gnunet' group.
usermod -aG gnunet gnunet

echo "User 'gnunet' added to group 'gnunet'."

exit 0

