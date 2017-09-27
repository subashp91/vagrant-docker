# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.network "public_network"
  config.vm.box_url = "https://vagrantcloud.com/centos/boxes/7/versions/1708.01/providers/virtualbox.box"
  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.hostname = "docker-nginx-host"
  config.vm.provision :docker
  #config.vm.provision :docker_compose, yml: "docker-compose.yml",rebuild: true, project_name: "Test-Vagrant", run: "always"
  config.vm.provision :docker_compose
  config.vm.provider "docker" do |d|
    d.build_image '/vagrant/.', args: '-t nginx-app1'
    d.run "nginx-app1", args: '-p 80:80'
  end
end
