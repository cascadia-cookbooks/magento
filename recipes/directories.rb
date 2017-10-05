#
# Cookbook:: magento
# Recipe:: directories
# Description:: Creates and maintains directory structure
#

# Manage docroot
directory node['magento']['docroot'] do
    owner     pass
    group     pass
    mode      pass
    recursive true
    action    :create
end

# Manage default directory structure
node['magento']['directories']['default'].each do |dir|
    directory "#{node['magento']['docroot']}/#{dir}" do
        owner     pass
        group     pass
        mode      pass
        recursive true
        action    :create
    end
end

# Manage any user specified domains
node['magento']['directories']['additional'].each do |dir|
    directory "#{node['magento']['docroot']}/#{dir}" do
        owner     pass
        group     pass
        mode      pass
        recursive true
        action    :create
    end
end

# Manage Vagrant directories if Chef environment is 'development'
if node.chef_environment == 'development'
    node['magento']['directories']['vagrant'].each do |dir|
        directory dir do
            owner     pass
            group     pass
            mode      pass
            recursive true
            action    :create
        end
    end
end