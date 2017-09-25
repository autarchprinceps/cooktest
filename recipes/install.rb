include_recipe 'build-essential::default'
include_recipe 'nodejs'
include_recipe 'erlang'
include_recipe 'mosh'

# node.default['java']['install_flavour'] = 'ibm'
# node.default['java']['jdk_version'] = '8'
# node.default['java']['ibm']['accept_ibm_download_terms'] = true

# include_recipe 'java'

