class mysql::install {
    package { 'mysql-server':
        ensure => installed
    }
}

class mysql::configure {
    exec { 'create-db':
        unless => "/usr/bin/mysql -uvagrant -pvagrant",
        command => "/usr/bin/mysql -uroot -e \"GRANT ALL PRIVILEGES ON *.* TO vagrant@localhost IDENTIFIED BY 'vagrant';\"",
        require => Class['mysql::install']
    }
}

class mysql::run {
    service { mysql:
        enable => true,
        ensure => running,
        hasstatus => true,
        hasrestart => true,
        subscribe => Package['mysql-server'],
        require => Class['mysql::install', 'mysql::configure']
    }
}

class mysql {
    include mysql::install
    include mysql::configure
    include mysql::run
}