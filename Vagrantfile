# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
config.vm.box = "ubuntu/bionic64"
config.vm.network "private_network", ip: "192.168.50.10"

config.vm.synced_folder "./data", "/home/vagrant/data"
config.vm.provider "virtualbox" do |vb|
vb.memory = "2048"
vb.name = "API-Vagrant" 
end

config.vm.provision "shell", path: "data/provision.sh"
config.vm.provision "shell", path: "data/script.sh"

end
