require_relative 'spec_helper'

describe 'butterfly::libsass' do
  let(:subject) do
    ChefSpec::SoloRunner.new.converge(described_recipe)
  end

  it 'installs spython_package[butterfly]' do
    expect(subject).to install_spython_package('libsass')
      .with(runtime: '2')
  end
end
