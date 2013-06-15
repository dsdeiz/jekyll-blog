# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.berkshelf.enabled = true

  config.vm.box = "precise32"

  config.vm.synced_folder "site/_site", "/var/www/sites/jekyll.vagrant"

  config.vm.network :private_network, ip: "33.33.33.5"

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "apt"
    chef.add_recipe "nginx"
    chef.add_recipe "jekyll-blog"
  end

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", "512"]
  end
end
