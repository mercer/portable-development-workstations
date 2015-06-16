# Portable Development Workstations

## Why?

Because a developer shouldn't need hours to set up their development machines.

## Requirements
* I should be able to restore my development environment withing 5 minutes
* I should have a similar ux with a containerized app as with the native app
* I should be able to access my files
* I should have a way to save settings and share them with my team mates
* I should be able to do this from linux/windows/mac

## Approaches
* docker containers with gui apps
* vagrant vm with desktop and a base image made out of it

### Vagrant vm with desktop strong points
* version is fixed, and up to date (to the version of the box)
* exact same vm runs on all machines
* throw away-able vm instance (when broke, when dirty, when starting a new story)

### Vagrant vm with desktop pitfalls
* there is some delay because of the virtual environment

## Next steps / Ideas
* (done) make a vagrant box with stuff already installed
* install more apps (eclipse, intellij idea, microsoft code, maven with dependencies, jdk, sublime, sql developer, soap ui)
* capture configuration (dotfiles?)

## FIXME
* vagrant up asks for password
* another developer's laptop doesn't have initial private key of the box

## Creating/updating the base box
To make a base box 
* vagrant up
* ```VBoxManage list vms``` to list running vms
* create the package for the appropiate vm, such as ```vagrant package --base portable-development-workstations_gnome_1434462355968_98708```
* go to https://atlas.hashicorp.com/mercer/boxes/vivid64-gnome, upload the new box and increase the version

## Interesting links

*   [Running GUI Apps with Docker](http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/)
*   [Your Desktop over ssh Running Inside of a Docker Container](http://blog.docker.com/2013/07/docker-desktop-your-desktop-over-ssh-running-inside-of-a-docker-container/)
*   [X2Go](http://wiki.x2go.org/doku.php/start)
*   [Chocolatey package manager for Windows](https://chocolatey.org/)
*   [Homebrew](http://brew.sh/) and [Caskroom](http://caskroom.io/) for Mac
*   [Boxstarter to setup Windows](http://boxstarter.org/)
*   [osxc to setup Macs using ansible](http://osxc.github.io/)
* [boxen for OS X](https://github.com/cegeka/portable-development-workstations)

## Other various links
* https://github.com/docker/docker/issues/8710
* http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/
* https://stackoverflow.com/questions/18878117/using-vagrant-to-run-virtual-machines-with-desktop-environment
* http://portalstack.blogspot.be/2013/11/vagrant-virtualbox-ubuntu-for-linux.html

