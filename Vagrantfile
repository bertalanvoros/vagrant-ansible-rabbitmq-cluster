# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provision "shell", path: "user-data.sh", keep_color: true
    
  config.vm.define "rabbitmq_1" do |rabbitmq_1|
    rabbitmq_1.vm.hostname = "rabbitmq-1"
    rabbitmq_1.vm.box = "rabbitmq_1"
	rabbitmq_1.vm.box = "ubuntu/bionic64"
	rabbitmq_1.vm.network "public_network"
	rabbitmq_1.vm.network "private_network", ip: "192.168.222.10"
	rabbitmq_1.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
	end
  end
  
  config.vm.define "rabbitmq_2" do |rabbitmq_2|
    rabbitmq_2.vm.hostname = "rabbitmq-2"
	rabbitmq_2.vm.box = "rabbitmq_2"
	rabbitmq_2.vm.box = "ubuntu/bionic64"
	rabbitmq_2.vm.network "public_network"
	rabbitmq_2.vm.network "private_network", ip: "192.168.222.20"
	rabbitmq_2.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
	end
  end
  
  config.vm.define "rabbitmq_3" do |rabbitmq_3|
    rabbitmq_3.vm.hostname = "diffusion-3"
	rabbitmq_3.vm.box = "rabbitmq_2"
	rabbitmq_3.vm.box = "ubuntu/bionic64"
	rabbitmq_3.vm.network "public_network"
	rabbitmq_3.vm.network "private_network", ip: "192.168.222.30"
	rabbitmq_3.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
	end
  end
    
  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  
end
