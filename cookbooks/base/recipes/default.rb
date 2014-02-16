#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
remote_file "/tmp/#{node['remi']['file_name']}" do
     source "#{node['remi']['remote_uri']}"
     not_if { ::File.exists?("/tmp/#{node['remi']['file_name']}") }
end

package node['remi']['file_name'] do
    action :install
    provider Chef::Provider::Package::Rpm
    source "/tmp/#{node['remi']['file_name']}"
end

%w{vim}.each do |pkg|
    package pkg do
        action :install
    end
end

template "/home/vagrant/.vimrc" do
    source ".vimrc"
    owner "vagrant"
    group "vagrant"
    mode 0644
    action :create
end
