# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	config.vm.box = "chad-thompson/ubuntu-trusty64-gui"
	config.vm.synced_folder "shared", "/tmp/shared"
	config.vm.provision "shell", path: "script.sh"
	
	config.vm.provider "virtualbox" do |vb|
		vb.gui=true
vb.memory=2048
vb.cpus=2
	end


config.vm.define "vagrantMachine" do |masterDG|
	masterDG.vm.hostname = "agentMachineDG.gac.local"
	masterDG.vm.network "public_network", ip: "192.168.1.29"
	end
end
