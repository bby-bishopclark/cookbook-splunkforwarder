#!/usr/bin/env ruby
# Configures the deploymentclient
#
# Recipe:: service
# Cookbook Name:: splunkforwareder
# Source:: https://github.com/ampledata/cookbook-splunkforwarder
# Author:: Ryan Punt <ryan@mirum.org>
# Copyright:: Copyright 2012 Ryan Punt
# License:: Apache License 2.0
#

template "deploymentclient.conf" do
  path "/opt/splunkforwarder/etc/system/local/deploymentclient.conf"
  owner "root"
  group "root"
  mode 0644
  notifies :restart, "service[splunk]"
end
