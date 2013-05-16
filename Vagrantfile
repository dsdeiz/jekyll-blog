# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise32"

  config.vm.synced_folder "_site", "/var/www/sites/jekyll.vagrant"

  config.vm.network :private_network, ip: "33.33.33.5"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks", "site-cookbooks"]

    chef.add_recipe "apt"
    chef.add_recipe "nginx"
    chef.add_recipe "jekyll-blog"
  end
end
