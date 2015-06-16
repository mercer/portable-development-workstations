#!/bin/bash
set -e

# apt-get install netselect-apt
# netselect-apt
# mv /etc/apt/sources.list /etc/apt/sources.list.bak
# mv sources.list /etc/apt/sources.list

# rm /etc/apt/sources.list
# echo "deb mirror://mirrors.ubuntu.com/mirrors.txt vivid main restricted universe multiverse" >> "/etc/apt/sources.list"
# echo "deb mirror://mirrors.ubuntu.com/mirrors.txt vivid-updates main restricted universe multiverse" > "/etc/apt/sources.list"
# echo "deb mirror://mirrors.ubuntu.com/mirrors.txt vivid-backports main restricted universe multiverse" > "/etc/apt/sources.list"
# echo "deb mirror://mirrors.ubuntu.com/mirrors.txt vivid-security main restricted universe multiverse" > "/etc/apt/sources.list"    

apt-get update
DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade --yes

apt-get install -y ubuntu-gnome-desktop virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11

# VBoxClient --clipboard --draganddrop --seamless --display --checkhostversion

VBoxClient --clipboard
VBoxClient --draganddrop
VBoxClient --seamless
VBoxClient --display
VBoxClient --checkhostversion
sed -i 's/allowed_users=console/allowed_users=anybody/' /etc/X11/Xwrapper.config
