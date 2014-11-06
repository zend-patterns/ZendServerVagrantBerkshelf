# Quick start Zend Server Vagrant/Chef template
This is a minimal Zend Server/Chef with MySQL template.

# Requirements

Vagrant plugins:
* vagrant-omnibus
* vagrant-berkshelf

# Usage
Clone or download, then modify the attributes in the ```chef.json``` section.

By default, it uses the Chef Ubuntu 14.04 form the Vagrant Cloud (https://vagrantcloud.com/chef/boxes/ubuntu-14.04), but you can use any distribution that is supported by Zend Server (http://www.zend.com/en/products/server/systemrequirements - Linux section).

The attributes:
* version: the version of Zend Server that you want to install (default: 7.0) - can be set to "early-access" for beta install
* phpversion: the version of PHP (default: 5.5)
* basedirdeb: set to "deb" to install on Apache 2.2 - otherwise leave out
* adminpassword: the password to use for the MySQL root user
* production: false for a development system
* apikeyname: the name for the api key that Chef creates - can be anything other than "admin"
* apikeysecret: a 64 alphanumeric string

# Contribute
Contributions are welcome. Submit pull requests to this repository.
