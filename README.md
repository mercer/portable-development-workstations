# Portable Development Workstations

## Why?

Because a developer shouldn't need hours to set up their development machines.

## Requirements
* I should be able to restore my dev environment withing 5 minutes
* I should have a similar ux with a containerized app as with the native app
* I should be able to access my files
* I should have a way to save settings and share them with my team mates
* I should be able to do this from linux/windows/mac

## Approaches
* docker containers with gui apps
* vagrant vm with desktop and a base image made out of it

### Vagrant vm with desktop strong points
* version is fixed, and up to date (to the version of the box)

### Vagrant vm with desktop pitfalls

### Base box
https://atlas.hashicorp.com/mercer/boxes/vivid64-gnome

## Next steps / Ideas
* make a vagrant box with stuff already installed

## TODO
* have a desktop environment with vagrant
* provision steps
** system setup
** dotfiles
** apps

## FIXME
* login automatically -> start once
* remove duplication in Vagrantfile



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
