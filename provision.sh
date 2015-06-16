#!/bin/bash
set -e

export DEBIAN_FRONTEND=noninteractive

rm /etc/apt/sources.list
echo "deb mirror://mirrors.ubuntu.com/mirrors.txt vivid main restricted universe multiverse" > "/etc/apt/sources.list"
echo "deb-src mirror://mirrors.ubuntu.com/mirrors.txt vivid main restricted universe multiverse" >> "/etc/apt/sources.list"
echo "deb mirror://mirrors.ubuntu.com/mirrors.txt vivid-updates main restricted universe multiverse" >> "/etc/apt/sources.list"
echo "deb-src mirror://mirrors.ubuntu.com/mirrors.txt vivid-updates main restricted universe multiverse" >> "/etc/apt/sources.list"
echo "deb mirror://mirrors.ubuntu.com/mirrors.txt vivid-security main restricted universe multiverse" >> "/etc/apt/sources.list"    
echo "deb-src mirror://mirrors.ubuntu.com/mirrors.txt vivid-security main restricted universe multiverse" >> "/etc/apt/sources.list"    
echo "deb mirror://mirrors.ubuntu.com/mirrors.txt vivid-backports main restricted universe multiverse" >> "/etc/apt/sources.list"
echo "deb-src mirror://mirrors.ubuntu.com/mirrors.txt vivid-backports main restricted universe multiverse" >> "/etc/apt/sources.list"
cat /etc/apt/sources.list

apt-get update
apt-get dist-upgrade --yes

apt-get install virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11 --yes
VBoxClient --clipboard
VBoxClient --draganddrop
VBoxClient --seamless
VBoxClient --display
VBoxClient --checkhostversion

apt-get install ubuntu-gnome-desktop virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11 --yes

sed -i 's/allowed_users=console/allowed_users=anybody/' /etc/X11/Xwrapper.config
