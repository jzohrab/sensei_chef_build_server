#
# Cookbook:: sensei_chef_build_server
# Recipe:: default
#
# Copyright:: 2017, jzohrab, All Rights Reserved.

# Ref https://getchef.zendesk.com/hc/en-us/articles/205034524-How-Can-I-Install-A-Non-MSI-Self-Installer-on-Windows-
include_recipe 'windows'

directory 'C:\tmp' do
  action :create
end

remote_file 'C:\tmp\rubyinstaller-2.3.1.exe' do
  source 'http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-2.3.1.exe'
  action :create_if_missing
end

execute 'C:\tmp\rubyinstaller-2.3.1.exe /silent' do
end

windows_path 'C:\Ruby23\bin' do
  action :add
end

