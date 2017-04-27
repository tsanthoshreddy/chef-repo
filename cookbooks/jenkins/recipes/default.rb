#
# Cookbook Name:: jenkins
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
bash 'get_jenkins' do
  code <<-EOH
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
echo 'deb https://pkg.jenkins.io/debian-stable binary/' | tee -a /etc/apt/sources.list
sudo apt-get update
EOH
end

package 'jenkins' do
	action :install
end

cookbook_file '/var/lib/jenkins/jenkins.install.InstallUtil.lastExecVersion' do
  source 'jenkins.install.InstallUtil.lastExecVersion'
  mode '0644'
end

cookbook_file '/var/lib/jenkins/config.xml' do
  source 'config.xml'
  mode '0644'
end

service 'jenkins' do
        action :restart
end

