# Increases the amount of traffic nginx server can handle

service { 'nginx stop':
    ensure => stopped;
}

exec { 'fix--for-nginx':
    command => "sed -i 's/15/4096/g' /etc/default/nginx",
    path    => ['/bin'],
}

# Restart nginx
service { 'nginx':
    ensure => running,
}
