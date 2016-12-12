# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.define "onasite.vm" do |vm_define|
  end

  config.vm.hostname = "onasite.local"

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 5432, host: 8432

  config.vm.synced_folder ".", "/home/vagrant/www/"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.name = "onasite.vm"
  end
  
  config.vm.box_check_update = false
  config.vm.network "private_network", ip: "192.168.33.9"
  config.vm.network "public_network"

  config.vm.provision :shell, path: "provision_bootstrap.sh"
  config.vm.provision :shell, path: "provision_django.sh", privileged: false
end
