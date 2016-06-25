# -*- coding: utf-8 -*-

require 'spec_helper'

describe service 'butterfly.socket' do
  it { should be_running }
end

describe file '/etc/system/systemd/butterfly.service' do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should be_mode 644 }
end

describe file '/etc/system/systemd/butterfly.socket' do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should be_mode 644 }
end
