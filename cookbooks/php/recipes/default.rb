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
    end

    package "php" do
        action :upgrade
    end
end
