# Magento
default['cas_magento'] = {
    domain: 'example.com',
    docroot: "/var/www/#{node['cas_magento']['domain']}"
}
