# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/ubuntu-14.04"

  config.omnibus.chef_version = :latest

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 10081, host: 10081

  config.vm.network "private_network", ip: "192.168.33.15"

  # config.vm.provider "virtualbox" do |vb|
  #   vb.customize ["modifyvm", :id, "--memory", "1024"]
  # end

  config.berkshelf.enabled = true
  config.berkshelf.berksfile_path = './Berksfile'

  config.vm.provision "chef_solo" do |chef|
    chef.add_recipe "zendserver::single"
    chef.add_recipe "mysql_zend"

    # You may also specify custom JSON attributes:
    chef.json = {
        zendserver: {
            version: "8.5",
            phpversion: "5.6",
            adminpassword: "1234",
            production: "false",
            apikeyname: "dev",
            apikeysecret: "aaaabbbbccccddddeeeeffffgggghhhhiiiijjjjkkkkllllmmmmnnnnoooopppp"
        },
        mysql: {
            server_debian_password: "1234",
            server_root_password: "1234",
            server_repl_password: "1234"
        },
        mysql_zend: {
            password: "1234",
            version: "5.5"
        }
    }
  end

end
