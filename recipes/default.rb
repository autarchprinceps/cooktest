#
# Cookbook:: cooktest
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
directory '/.chef' do
	owner 'root'
	group 'root'
	mode '0755'
	action :create
end


