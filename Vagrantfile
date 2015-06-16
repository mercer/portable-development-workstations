# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/vivid64"

  # xfce4
  
  config.vm.define "gnome", primary: true do |gnome|
    gnome.vm.provider "virtualbox" do |vb|
      vb.gui = true
      vb.customize ["modifyvm", :id, "--memory", "2048"]
      vb.customize ["modifyvm", :id, "--cpus", "2"]
      vb.customize ["modifyvm", :id, "--graphicscontroller", "vboxvga"]
      vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
      vb.customize ["modifyvm", :id, "--ioapic", "on"]
      vb.customize ["modifyvm", :id, "--vram", "128"]
      vb.customize ["modifyvm", :id, "--hwvirtex", "on"]
    end

    gnome.vm.provision "shell", inline: <<-SHELL

#deb mirror://mirrors.ubuntu.com/mirrors.txt vivid-updates main restricted universe multiverse
#deb mirror://mirrors.ubuntu.com/mirrors.txt vivid-backports main restricted universe multiverse
#deb mirror://mirrors.ubuntu.com/mirrors.txt vivid-security main restricted universe multiverse    
      #echo "deb mirror://mirrors.ubuntu.com/mirrors.txt vivid main restricted universe multiverse" | cat - file | tee file
      apt-get update
      #DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade --yes
      apt-get install -y ubuntu-gnome-desktop virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
      VBoxClient --clipboard
      VBoxClient --draganddrop
      VBoxClient --seamless
      VBoxClient --display
      VBoxClient --checkhostversion
      sed -i 's/allowed_users=console/allowed_users=anybody/' /etc/X11/Xwrapper.config
    SHELL
  end

end
