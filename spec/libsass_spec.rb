# -*- coding: utf-8 -*-

require_relative 'spec_helper'

describe 'butterfly::libsass' do
  let(:subject) do
    ChefSpec::SoloRunner.new.converge(described_recipe)
  end

  it 'installs python_pip[butterfly]' do
    expect(subject).to install_python_pip('libsass')
  end
end