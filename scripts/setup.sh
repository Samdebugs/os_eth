#!/bin/bash
# Setup script for OS_ETH

echo "Setting up OS_ETH build environment..."

# Install Yocto dependencies (Ubuntu)
sudo apt-get update
sudo apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pylint3 xterm python3-subunit mesa-common-dev

echo "Setup complete. Run ./scripts/init-build.sh to initialize."