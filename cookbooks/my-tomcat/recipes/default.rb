#A
# Cookbook Name:: my-tomcat
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
tomcat_install 'mytomcat' do
  version '8.0.36'
end

tomcat_service 'mytomcat' do
  action :start
end

remote_file "Copy service file" do 
  path "/opt/tomcat_mytomcat/webapps/HelloWorld.war" 
  source "file:///opt/deploy/hello-world-1.0.0.war"
  owner 'chefuser'
  group 'chefuser'
  mode 0755
end

tomcat_service 'mytomcat' do
  action :restart
end
