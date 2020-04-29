# -*- coding: utf-8 -*-
name 'butterfly'
maintainer 'Sliim'
maintainer_email 'sliim@mailoo.org'
license 'Apache-2.0'
description 'Installs/Configures butterfly'
chef_version '>= 12'
version '0.2.1'

depends 'poise-python'

supports 'ubuntu'
supports 'debian'

source_url 'https://github.com/sliim-cookbooks/butterfly' if
  respond_to?(:source_url)
issues_url 'https://github.com/sliim-cookbooks/butterfly/issues' if
  respond_to?(:issues_url)
