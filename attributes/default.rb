# -*- coding: utf-8 -*-
#
# Cookbook Name:: butterfly
# Attributes:: default
#
# Copyright 2016, Sliim
#

default['butterfly']['packages'] = %w(libffi-dev python-openssl)
default['butterfly']['version'] = nil
default['butterfly']['config'] = {
  debug: 'False',
  more: 'False',
  unminified: 'False',
  host: 'localhost',
  port: '57575',
  shell: '/bin/sh',
  motd: 'motd',
  cmd: 'None',
  unsecure: 'False',
  login: 'False',
  force_unicode_width: 'False',
  ssl_version: 'None'
}
