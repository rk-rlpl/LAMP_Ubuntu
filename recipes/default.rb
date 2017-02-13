#
# Cookbook:: LAMP_Ubuntu
# Recipe:: default
#
# Copyright:: 2017, Raj Kiran Gade, All Rights Reserved.

# Install Apache2 from package
package 'apache2' do
  action [:install]
end

service 'apache2' do
  # supports :status => true
  action [:enable, :start]
end
