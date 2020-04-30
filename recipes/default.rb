# Cookbook:: butterfly
# Recipe:: default
# Copyright:: 2016-2020 Sliim

node['butterfly']['packages'].each do |pkg|
  package pkg
end

spython_runtime node['butterfly']['python']

spython_package 'butterfly' do
  runtime node['butterfly']['python']
  version node['butterfly']['version']
end

directory '/etc/butterfly' do
  owner 'root'
  group 'root'
  mode '0755'
end

template '/etc/butterfly/butterfly.conf' do
  source 'butterfly.conf.erb'
  owner 'root'
  group 'root'
  mode '0644'
  variables config: node['butterfly']['config']
end
