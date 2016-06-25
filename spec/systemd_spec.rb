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

  it 'creates template[/etc/systemd/system/butterfly.socket]' do
    config_file = '/etc/systemd/system/butterfly.socket'
    matches = [/ListenStream=localhost:57575/]

    expect(subject).to create_template(config_file)
      .with(source: 'butterfly.socket.erb',
            owner: 'root',
            group: 'root',
            mode: '0644')

    matches.each do |m|
      expect(subject).to render_file(config_file).with_content(m)
    end
  end

  it 'enables service[butterfly.socket]' do
    expect(subject).to enable_service('butterfly.socket')
  end

  it 'starts service[butterfly.socket]' do
    expect(subject).to start_service('butterfly.socket')
  end
end
