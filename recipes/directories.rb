#
# Cookbook:: magento
# Recipe:: directories
# Description:: Creates and maintains directory structure
#

owner = node['cas_magento']['directories']['owner']
group = node['cas_magento']['directories']['group']
mode  = node['cas_magento']['directories']['mode']

# Manage docroot
directory "#{node['cas_magento']['directories']['docroot']}" do
    owner     owner
    group     group
    mode      mode
    recursive true
    action    :create
end

# Manage default directory structure
node['cas_magento']['directories']['default'].each do |dir|
    directory "#{node['cas_magento']['directories']['docroot']}/#{dir}" do
        owner     owner
        group     group
        mode      mode
        recursive true
        action    :create
    end
end

# Manage any user specified domains
node['cas_magento']['directories']['additional'].each do |dir|
    directory "#{node['cas_magento']['directories']['docroot']}/#{dir}" do
        owner     owner
        group     group
        mode      mode
        recursive true
        action    :create
    end
end

# Manage Vagrant directories if Chef environment is 'development'
if node.chef_environment == 'development'
    node['cas_magento']['directories']['vagrant'].each do |dir|
        directory dir do
            owner     owner
            group     group
            mode      mode
            recursive true
            action    :create
        end
    end
end
