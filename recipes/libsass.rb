# Cookbook:: butterfly
# Recipe:: libsass
# Copyright:: 2016-2020 Sliim

spython_package 'libsass' do
  runtime node['butterfly']['python']
end
