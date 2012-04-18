
default['ark']['apache_mirror'] = 'http://apache.mirrors.tds.net'

case node.platform
when "ubuntu", "debian"
  default['ark']['prefix_root'] = "/opt"
  default['ark']['prefix_bin'] = "/usr/bin"
  default['ark']['prefix_home'] = "/usr/share"
when "redhat", "centos", "fedora"
  default['ark']['prefix_root'] = "/usr/local"
  default['ark']['prefix_bin'] = "/usr/local/bin"
  default['ark']['prefix_home'] = "/usr/local"
else
  default['ark']['prefix_root'] = "/usr/local"
  default['ark']['prefix_bin'] = "/usr/local/bin"
  default['ark']['prefix_home'] = "/usr/local"
end
