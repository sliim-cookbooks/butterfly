# butterfly Cookbook | [![Cookbook Version](https://img.shields.io/cookbook/v/butterfly.svg)](https://supermarket.chef.io/cookbooks/butterfly) [![Build Status](https://travis-ci.org/sliim-cookbooks/butterfly.svg?branch=master)](https://travis-ci.org/sliim-cookbooks/butterfly) 

Installs/Configures [butterfly](https://github.com/paradoxxxzero/butterfly) on your server!

## Requirements

#### cookbooks
- `spython`

#### Platforms
The following platforms and versions are tested and supported using Opscode's test-kitchen:
- `Ubuntu 16.04`
- `Ubuntu 18.04`
- `Debian 9`
- `Debian 10`

## Attributes

#### butterfly::default
|    Key                  |  Type   |    Description                                           |
| ------------------------| ------- | -------------------------------------------------------- |
| `[butterfly][packages]` | Array   | Required packages (default: [libffi-dev python-openssl]) |
| `[butterfly][version]`  | String  | Butterfly package version (default: '')                  |
| `[butterfly][python]`   | String  | Python runtime to use (default: 3)                       |
| `[butterfly][config]`   | Hash    | Butterfly configuration                                  |

## Usage

#### butterfly::default

Just include `butterfly` in your node's `run_list` to install `butterfly` pip package:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[butterfly]"
  ]
}
```

#### butterfly::libsass

Just include `butterfly::libsass` in your node's `run_list` to install `libsass` pip package (for themes support):

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[butterfly::libsass]"
  ]
}
```

#### butterfly::systemd

Include `butterfly::systemd` in your node's `run_list` to setup `butterfly` service:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[butterfly::systemd]"
  ]
}
```

## Testing

See [TESTING.md](TESTING.md)

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md)

## License and Authors

Authors: Sliim <sliim@mailoo.org>

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

