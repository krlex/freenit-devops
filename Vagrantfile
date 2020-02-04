# -*- mode: ruby -*-

require 'yaml'
servers = YAML.load_file('servers.yml')
API_VERSION = "2"
Vagrant.configure(API_VERSION) do |config|
  servers.each do | srv |
    config.vm.define srv["name"] do |machine|
      machine.vm.box = srv["box"]
      machine.vm.network "private_network", ip: srv["box_ip"]
      machine.vm.provider :virtualbox do |vb|
        vb.name = srv["name"]
        vb.memory = srv["memory"]
        vb.cpus = srv["cpu"]
      machine.vm.provision "shell", path: srv["provision"]
      end
    end
  end
end
