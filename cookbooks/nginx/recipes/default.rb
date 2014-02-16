#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "nginx" do
    action :install
end

template "/etc/nginx/conf.d/default.conf" do
    source "default.conf.erb"
    owner "root"
    group "root"
    mode 0644
    action :create
end

service "nginx" do
    action [:enable, :restart]
end
