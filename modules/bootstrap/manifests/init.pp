class bootstrap {
    exec { 'apt-get-update':
        path => '/usr/bin',
        command => 'apt-get update'
    }

    group { "puppet": 
    	ensure => "present", 
  	}
}
