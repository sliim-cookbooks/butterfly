require_relative 'spec_helper'

describe 'butterfly::default' do
  let(:subject) do
    ChefSpec::SoloRunner.new.converge(described_recipe)
  end

  %w(libffi-dev python-openssl).each do |pkg|
    it "installs package[#{pkg}]" do
      expect(subject).to install_package(pkg)
    end
  end

  it 'installs spython_runtime[3]' do
    expect(subject).to install_spython_runtime('3')
  end

  it 'installs spython_package[butterfly]' do
    expect(subject).to install_spython_package('butterfly')
      .with(version: '',
            runtime: '3')
  end

  it 'creates directory[/etc/butterfly]' do
    expect(subject).to create_directory('/etc/butterfly')
      .with(owner: 'root',
            group: 'root',
            mode: '0755')
  end

  it 'creates template[/etc/butterfly/butterfly.conf]' do
    expect(subject).to create_template('/etc/butterfly/butterfly.conf')
      .with(source: 'butterfly.conf.erb',
            owner: 'root',
            group: 'root',
            mode: '0644')
  end

  context 'with package version' do
    let(:subject) do
      ChefSpec::SoloRunner.new do |node|
        node.set['butterfly']['version'] = '2.0.1'
      end.converge(described_recipe)
    end

    it 'installs spython_package[butterfly]' do
      expect(subject).to install_spython_package('butterfly')
        .with(version: '2.0.1',
              runtime: '3')
    end
  end
end
