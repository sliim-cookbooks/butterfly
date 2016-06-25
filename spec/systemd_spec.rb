# -*- coding: utf-8 -*-

require_relative 'spec_helper'

describe 'butterfly::systemd' do
  let(:subject) do
    ChefSpec::SoloRunner.new.converge(described_recipe)
  end

  it 'creates cookbook_file[/etc/systemd/system/butterfly.service]' do
    expect(subject).to create_cookbook_file(
      '/etc/systemd/system/butterfly.service'
    ).with(source: 'butterfly.service',
           owner: 'root',
           group: 'root',
           mode: '0644')
  end

  it 'creates cookbook_file[/etc/systemd/system/butterfly.socket]' do
    expect(subject).to create_cookbook_file(
      '/etc/systemd/system/butterfly.socket'
    ).with(source: 'butterfly.socket',
           owner: 'root',
           group: 'root',
           mode: '0644')
  end

  it 'enables service[butterfly.socket]' do
    expect(subject).to enable_service('butterfly.socket')
  end

  it 'starts service[butterfly.socket]' do
    expect(subject).to start_service('butterfly.socket')
  end
end
