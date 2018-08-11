# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.require_version '>= 1.5.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = 'bento/centos-6.9'

  config.vm.define "workstation" do |ws|
    ws.omnibus.chef_version = "12.19.36"
    ws.berkshelf.enabled = true

    ws.vm.hostname = 'workstation.local'
    ws.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "2048"]
      vb.customize ["modifyvm", :id, "--cpuexecutioncap", "20"]
    end

    ws.vm.provision 'chef_zero' do |zero|
      zero.add_recipe 'ob_jenkins'
      zero.nodes_path = '.vagrant/nodes'
    end
  end
end
