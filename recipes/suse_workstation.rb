include_recipe 'zypper'

#zypper_repo 'jenkins' do
#  key 'http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key'
#  uri 'http://pkg.jenkins-ci.org/opensuse/'
#end

zypper_package %w[make gcc llvm-clang htop opera zsh powerline powerline-fonts tmux-powerline ruby ruby-devel] do
	options '--download-in-heaps'
end

rpm_package 'chefdk' do
	source 'https://packages.chef.io/files/stable/chefdk/2.2.1/sles/12/chefdk-2.2.1-1.sles12.x86_64.rpm'
	not_if { ::File.exist?('/opt/chefdk/bin/chef') }
end

node.default['vim']['install_method'] = 'package'
node.default['vim']['extra_packages'] = %w[vim-plugin-powerline]
include_recipe 'vim'

include_recipe 'vagrant'

%w[vagrant-omnibus vagrant-lxc vagrant-aws vagrant-berkshelf vagrant-cachier vagrant-scaleway vagrant-bundler vagrant-git].each do |vp| # vagrant-libvirt 
	vagrant_plugin vp
end
