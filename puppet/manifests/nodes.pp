node default {
include users
include groups
}

/*
user { 'arjun':
    ensure => 'present',
    groups => ['sudo', 'ubuntu'],
    home => '/home/arjun',
    managehome => true,
    password => "test",
    shell => '/bin/bash',
    }

group { 'ubuntu':
    ensure => 'present',
    members => ['arjun'],
    }
*/
