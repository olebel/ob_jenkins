#
# Cookbook:: ob_jenkins
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
include_recipe 'jenkins::java'
include_recipe 'jenkins::master'

git_client 'default' do
  action :install
end
