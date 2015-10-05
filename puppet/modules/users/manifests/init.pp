class users{
user { 'arjun':
    ensure => 'present',
    groups => ['sudo', 'ubuntu'],
    home => '/home/arjun',
    managehome => true,
    password => "test",
    shell => '/bin/bash',
    }

file { '/home/arjun':
    ensure => directory,
    owner => 'arjun',
    group => 'arjun',
    mode => 755,
    source => 'puppet:///modules/users/arjun',
    recurse => remote,
    require => User['arjun'],
    }    

user { 'vagrant':
    ensure => 'present',
    groups => ['sudo', 'ubuntu', 'vagrant'],
    home => '/home/vagrant',
    managehome => true,
    password => "vagrant",
    shell => '/bin/bash',
    }

file { '/home/vagrant':
    ensure => directory,
    owner => 'vagrant',
    group => 'vagrant',
    mode => 755,
    source => 'puppet:///modules/users/vagrant',
    recurse => remote,
    require => User['vagrant'],
    }
}

class groups{
group { 'ubuntu':
    ensure => 'present',
    members => ['arjun'],
    }
}
