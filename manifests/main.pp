stage { 'prepare': before => Stage['main'] }

class {
	'bootstrap':  stage => prepare;
	'tools':      stage => main;
	'php':        stage => main;
	'nginx':      stage => main;
	'nodejs':     stage => main;
	'mysql':      stage => main;
	'java':       stage => main;
	'mongodb':    stage => main;
	'redis':      stage => main;
}

addServer {'adminer':
	site => 'adminer.local',
	root => '/vagrant/www/adminer'
}
