#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{php php-devel php-mbstring php-fpm php-mysql php-common php-pear}.each do |pkg|
    package pkg do 
        action :install
        options "--enablerepo=remi --enablerepo=remi-php55"
    end

    package "php" do
        action :upgrade
    end
end

service "php-fpm" do
    action [:start, :enable]
end
