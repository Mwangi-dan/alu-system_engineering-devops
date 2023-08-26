# Increases the amaount of traffic nginx server can handle

exec { 'fix--for-nginx':
    command => 'sed -i "s/15/4096/g" /etc/default/nginx',
    path    => ['/bin/'],
}

# Restart nginx
exec { 'nginx-restart':
    command => 'nginx restart',
    path    => '/etc/init/d/'
}
