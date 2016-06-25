# -*- coding: utf-8 -*-
#
# Cookbook Name:: butterfly
# Recipe:: default
#
# Copyright 2016, Sliim
#

node['butterfly']['packages'].each do |pkg|
  package pkg
end

python_runtime node['butterfly']['python']

python_package 'butterfly' do
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
end
