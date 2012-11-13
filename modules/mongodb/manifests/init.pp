class mongodb::install {
    package { 'mongodb':
        ensure => installed,
        require => Class['php']
    }
    exec { 'install-mongodb-php':
        unless => "/usr/bin/php -m | grep mongo",
        command => '/usr/bin/pecl install mongo',
        require => [Class['php'], Class['tools']]
    }
    file { "/etc/php5/conf.d/mongodb.ini":
        content => "extension=mongo.so",
        require => Exec['install-mongodb-php']
    }
}

class mongodb::configure {
}

class mongodb::run {
    service { mongodb:
        enable => true,
        ensure => running,
        hasstatus => true,
        hasrestart => true,
        require => Class['mongodb::install', 'mongodb::configure'],
    }
}

class mongodb {
    include mongodb::install
    include mongodb::configure
    include mongodb::run
}
