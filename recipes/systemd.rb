# -*- coding: utf-8 -*-
#
# Cookbook Name:: butterfly
# Recipe:: systemd
#
# Copyright 2016, Sliim
#

cookbook_file '/etc/systemd/system/butterfly.service' do
  source 'butterfly.service'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[butterfly.socket]', :delayed
end

template '/etc/systemd/system/butterfly.socket' do
  source 'butterfly.socket.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[butterfly.socket]', :delayed
end

service 'butterfly.socket' do
  action [:enable, :start]
  supports status: true, start: true, stop: true, restart: true
  provider Chef::Provider::Service::Systemd
end

execute 'systemctl-daemon-reload' do
  action :nothing
  command 'systemctl daemon-reload'
  subscribes :run, 'template[/etc/system/systemd/butterfly.service]',
             :immediately
  subscribes :run, 'template[/etc/system/systemd/butterfly.socket]',
             :immediately
  only_if { node['init_package'] == 'systemd' }
end
