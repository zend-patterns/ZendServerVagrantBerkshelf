# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/ubuntu-14.04"

  config.omnibus.chef_version = :latest
  
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 10081, host: 10081

  config.vm.network "private_network", ip: "192.168.33.10"

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  # config.ssh.forward_agent = true

  # config.vm.synced_folder "../data", "/vagrant_data"

  # config.vm.provider "virtualbox" do |vb|
  #   # Don't boot with headless mode
  #   vb.gui = true
  #
  #   # Use VBoxManage to customize the VM. For example to change memory:
  #   vb.customize ["modifyvm", :id, "--memory", "1024"]
  # end

  config.berkshelf.enabled = true

  # Enable provisioning with chef solo, specifying a cookbooks path, roles
  # path, and data_bags path (all relative to this Vagrantfile), and adding
  # some recipes and/or roles.

  config.vm.provision "chef_solo" do |chef|
    chef.add_recipe "zendserver::single"
    chef.add_recipe "mysql::server"
  
    # You may also specify custom JSON attributes:
    chef.json = { 
        zendserver: {
            version: "7.0",
            phpversion: "5.5",
            adminpassword: "1234",
            production: "false",
            apikeyname: "dev",
            apikeysecret: "aaaabbbbccccddddeeeeffffgggghhhhiiiijjjjkkkkllllmmmmnnnnoooopppp" 
        },
        mysql: {
            server_debian_password: "1234",
            server_root_password: "1234",
            server_repl_password: "1234"              
        }
    }
  end
end
