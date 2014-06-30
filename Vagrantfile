# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.hostname = "web-starter"
  
  BROWSERSYNC_HTTP = 3000
  config.vm.network "forwarded_port", guest: BROWSERSYNC_HTTP, host: BROWSERSYNC_HTTP
  
  # Caution: if for some reason node_modules is created on host, it will overwrite the initial npm install node_modules during provisioning and every time a rsync is done
  config.vm.synced_folder ".", "/vagrant", type: "rsync", rsync__exclude: [".git/",",node_modules/"]
    
  config.vm.provision "shell", path: "bootstrap.sh"
end
