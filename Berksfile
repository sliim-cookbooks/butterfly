source 'https://supermarket.chef.io'
metadata

group :integration do
  cookbook 'apt'
  cookbook 'build-essential'
  cookbook 'locales',
           git: 'https://github.com/sliim-cookbooks/locales',
           ref: 'create-directory'
end
