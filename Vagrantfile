# Vagrantfile for splunkforwarder Cookbook.
#
# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# Author:: Greg Albrecht <mailto:gba@splunk.com>
# Copyright:: Copyright 2012 Splunk, Inc.
# License:: Apache License 2.0
#


Vagrant::Config.run do |config|
  config.vm.box = 'precise64_vmware'
  config.vm.box_url = 'http://files.vagrantup.com/precise64_vmware.box'
  config.vm.host_name = 'splunkforwarder'
  config.vm.forward_port(8000, 6180)
  config.vm.forward_port(8089, 6189)
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = [ENV['CB_TMP']]
    chef.add_recipe "splunkforwarder"
    chef.json = {
      "splunkforwarder" => {
        "version" => "6.1.3",
        "build"=> "220630",
        "deploymentserver" => {
          "hostname" => "splunk.east1.naturebox.com"
        },
        "deploymentclient" => {
          "class_name" => "prod-ims"
        }
      }
    }
  end
end
