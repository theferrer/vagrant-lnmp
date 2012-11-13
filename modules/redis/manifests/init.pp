class redis::install {
    package { 'redis-server':
        ensure => installed
    }
}

class redis::configure {
}

class redis::run {
    service { redis-server:
        enable => true,
        ensure => running,
        hasstatus => true,
        hasrestart => true,
        require => Class['redis::install'],
    }
}

class redis {
    include redis::install
    include redis::configure
    include redis::run
}