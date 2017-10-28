default['cas_magento']['directories'] = {
    docroot: "/var/www/#{node['cas_magento']['domain']}",
    owner: 'root',
    group: 'root',
    mode: 0755,
    default: %w(
        releases
        shared
        shared/app
        shared/app/etc
        shared/composer
        shared/pub
        shared/pub/media
        shared/pub/sitemaps
        shared/pub/static
        shared/var
    ),
    additional: %w(
    ),
    vagrant: %w(
        /vagrant
        /vagrant/magento
        /vagrant/magento/app
        /vagrant/magento/app/etc
        /vagrant/magento/var
        /vagrant/magento/var/session
        /vagrant/magento/vendor
    )
}
