# -*- coding: utf-8 -*-
name 'butterfly'
maintainer 'Sliim'
maintainer_email 'sliim@mailoo.org'
license 'Apache 2.0'
description 'Installs/Configures butterfly'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

recipe 'default', 'Installs/Configures butterfly'
recipe 'libsass', 'Installs libsass pip package for themes support'
recipe 'systemd', 'Butterfly service with systemd'

depends 'python'

supports 'ubuntu'
supports 'debian'

source_url 'https://github.com/sliim-cookbooks/butterfly' if
  respond_to?(:source_url)
issues_url 'https://github.com/sliim-cookbooks/butterfly/issues' if
  respond_to?(:issues_url)
