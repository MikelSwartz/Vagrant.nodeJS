# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "bmcgonigle/centos68"
  config.vm.hostname = "nodejs.opengoodies.com"
  config.vm.network "forwarded_port", guest: 3000, host: 3000
 
#https://github.com/paircolumbus/Git-It 
  config.vm.provision "shell",
    path: "nodeJS.provision.sh"
end
