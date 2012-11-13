class nodejs::install {
    package { 'npm':
        ensure => installed,
        require => Class['tools']
    }
}

class nodejs::configure {
}

class nodejs {
    include nodejs::install
    include nodejs::configure
}