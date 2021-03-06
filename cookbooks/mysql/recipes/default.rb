#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{mysql-server mysql-devel}.each do |pkg|
    package pkg do
        action :install
    end

    service "mysqld" do
        action [:start, :enable]
    end
end
