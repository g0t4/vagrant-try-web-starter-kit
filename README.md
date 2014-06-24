vagrant-try-web-starter-kit
===========================

An environment to give the Google Web Starter Kit a spin.

## Pre-requisites

1. vagrant
1. virtualbox
1. rsync
	- windows users, add the rsync package to cygwin and run vagrant from cygwin
	- why? to avoid symbolic link issues with the host environment and latency issues monitoring changes to the web-starter-kit git submodule on the guest environment

## Usage

1. `git clone https://github.com/g0t4/vagrant-try-web-starter-kit`
1. open a terminal in the cloned directory
1. `vagrant up` - boot the ubuntu instance and provision the components for the web starter kit
1. `vagrant ssh` - ssh in to the ubuntu instance
	1. `cd /vagrant/web-starter-kit`
	1. `gulp serve` - start browsersync
1. open a browser to http://localhost:3000 and marvel at the magic :)

## Changing the web-starter-kit sample
1. open another terminal, on the host environment in the cloned directory, and run `vagrant rsync-auto`, this will automatically sync changes in the host environment to the guest environment
1. hack away at the web-starter-kit submodule and watch changes propage through via BrowserSync to all devices with the sample open

## When you're done or if you mess something up

1. `vagrant destroy` - destroy the ubuntu instance
