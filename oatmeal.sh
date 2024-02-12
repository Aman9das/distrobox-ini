#!/bin/bash
 
# Define the main function which will contain your code
main() {
    # Your code goes here
    if [ -f "/etc/fedora-release" ]; then
        # Fedora commands here
        dnf config-manager --add-repo https://yum.dustinblackman.com/config.repo
        dnf install oatmeal -y
    else
        if [ -f "/etc/debian_version" ]; then
            # Debian-based commands here
            curl -s https://apt.dustinblackman.com/KEY.gpg | apt-key add -
            curl -s https://apt.dustinblackman.com/dustinblackman.list > /etc/apt/sources.list.d/dustinblackman.list
            sudo apt-get update
            sudo apt-get install oatmeal
        fi
    fi
}

# Call the main function
main

# Add additional functions and calls as necessary

# EOF
exit 0
