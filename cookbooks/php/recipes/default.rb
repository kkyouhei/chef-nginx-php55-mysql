#
# Cookbook Name:: php
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

%w{php php-devel php-mbstring php-fpm php-mysql php-common php-pear}.each do |pkg|
    package pkg do 
        action :install
        options "--enablerepo=remi --enablerepo=remi-php55"
    end

    package "php" do
        action :upgrade
    end
end
