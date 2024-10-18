#!/bin/sh

# rizitis 2024
# This script helps the user to automate the GNUnet setup for user services, Slackware-current sysvinit.

# Check if the script is run as root; if not, print a message and exit.
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script as root."
    echo "Usage: $(basename "$0") -u USER"
    exit 1
fi

# Check if any arguments are passed; if none, print usage and exit.
if [ $# -eq 0 ]; then
    echo "Usage: $(basename "$0") -u USER"
    exit 1
fi

# Parse command-line options using getopts.
while getopts ':u:' OPTION; do
    case "$OPTION" in
        u) USER="$OPTARG" ;;   # Extract username from option
        *) echo "Unknown parameter"; exit 1 ;;  # Handle unknown options
    esac
done

# Define the path to the GNUnet configuration file for the user.
CONFIG_PATH="/home/$USER/.config/gnunet.conf"
mkdir -p /home/$USER/.gnunet/runtime
chmod 755 /home/$USER/.gnunet/runtime
# Check if the group 'gnunet' exists; if not, create it.
if ! getent group gnunet > /dev/null; then
    echo "Group 'gnunet' does not exist. Creating it now."
    groupadd gnunet
fi

# Add the user to the gnunet group; suppress error messages.
echo "Adding user '$USER' to group 'gnunet'..."
if ! usermod -aG gnunet "$USER"; then
    echo "Failed to add user '$USER' to the gnunet group. User may already be in the group."
fi

# Create the user-specific GNUnet configuration file.
echo "Creating user config at $CONFIG_PATH"
mkdir -p "$(dirname "$CONFIG_PATH")"  # Create the config directory if it doesn't exist
if ! cat > "$CONFIG_PATH" << EOF
[paths]
GNUNET_RUNTIME_DIR = "/home/$USER/.gnunet/runtime/"

[arm]
START_SYSTEM_SERVICES = YES
START_USER_SERVICES = YES

[nat]
ENABLED = YES
METHOD = UPNP
EOF
then
    echo "Failed to create configuration file at '$CONFIG_PATH'."
    exit 1
fi

# Change ownership of the configuration file to the user.
echo "Changing ownership of the co

