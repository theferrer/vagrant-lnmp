class tools {
	package { 'acl':
		ensure => installed
	}
	package { 'curl':
		ensure => installed
	}
	package { 'git':
		ensure => installed
	}
	package { 'htop':
		ensure => installed
	}
	package { 'build-essential':
		ensure => installed
	}
}