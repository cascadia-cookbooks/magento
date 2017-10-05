# Magento
default['magento'] = {
    domain: 'example.com',
    docroot: "/var/www/#{node['magento']['domain']}"
}
