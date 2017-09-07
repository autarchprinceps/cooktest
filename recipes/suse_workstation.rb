include_recipe 'zypper'

#zypper_repo 'jenkins' do
#  key 'http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key'
#  uri 'http://pkg.jenkins-ci.org/opensuse/'
#end

default['vim']['install_method'] = 'package'
# default['vim']['extra_packages'] = ?
include_recipe 'vim'

default['chef_dk']['global_shell_init'] = true
include_recipe 'chef_dk'
