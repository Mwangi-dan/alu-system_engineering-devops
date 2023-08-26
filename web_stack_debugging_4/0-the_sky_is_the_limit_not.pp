# Increases the amaount of traffic nginx server can handle

exec { 'fix--for-nginx':
	command => 'nginx restart',
	path => '/usr/local/bin/:/bin/'
} ->

# Restar nginx
exec { 'nginx-restart':
	command => 'nginx restart',
	path => '/etc/init/d/'
}
