group { "managers":
    ensure => "present",
    gid => "1999",
}

group { "accounting":
    ensure => "present",
    gid => "2999",
}

group { "sales":
    ensure => "present",
    gid => "3999",
}

user { "mscott":
    uid => "1001",
    ensure => present,
    comment => "Michael Scott",
    gid => "1001",
    groups => ["managers"],
    shell => "/bin/bash",
    home => "/home/mscott",
    managehome => true,
}

user { "dschrute":
    uid => "1002",
    ensure => present,
    comment => "Dwight Schrute",
    gid => "1002",
    groups => ["managers"],
    shell => "/bin/bash",
    home => "/home/dschrute",
    managehome => true,
}

user { "jhalpert":
    uid => "1003",
    ensure => present,
    comment => "Jim Halpert",
    gid => "1003",
    groups => ["managers"],
    shell => "/bin/bash",
    home => "/home/jhalpert",
    managehome => true,
}

user { "amartin":
    uid => "2001",
    ensure => present,
    comment => "Angela Martin",
    gid => "2001",
    groups => ["accounting"],
    shell => "/bin/bash",
    home => "/home/amartin",
    managehome => true,
}

user { "kmalone":
    uid => "2002",
    ensure => present,
    comment => "Kevin Malone",
    gid => "2002",
    groups => ["accounting"],
    shell => "/bin/bash",
    home => "/home/kmalone",
    managehome => true,
}

user { "omartinez":
    uid => "2003",
    ensure => present,
    comment => "Oscar Martinez",
    gid => "2003",
    groups => ["accounting"],
    shell => "/bin/bash",
    home => "/home/omartinez",
    managehome => true,
}

user { "tflenderson":
    uid => "2004",
    ensure => present,
    comment => "Toby Flenderson",
    gid => "2004",
    groups => ["accounting"],
    shell => "/bin/bash",
    home => "/home/tflenderson",
    managehome => true,
}

user { "cbratton":
    uid => "2005",
    ensure => present,
    comment => "Creed Bratton",
    gid => "2005",
    groups => ["accounting"],
    shell => "/bin/bash",
    home => "/home/cbratton",
    managehome => true,
}

user { "dphilbin":
    uid => "2006",
    ensure => present,
    comment => "Darryl Philbin",
    gid => "2006",
    groups => ["accounting"],
    shell => "/bin/bash",
    home => "/home/dphilbin",
    managehome => true,
}

user { "abernard":
    uid => "3001",
    ensure => present,
    comment => "Andy Bernard",
    gid => "3001",
    groups => ["sales"],
    shell => "/bin/bash",
    home => "/home/abernard",
    managehome => true,
}

user { "plapin":
    uid => "3002",
    ensure => present,
    comment => "Phyllis Lapin",
    gid => "3002",
    groups => ["sales"],
    shell => "/bin/bash",
    home => "/home/plapin",
    managehome => true,
}

user { "shudson":
    uid => "3003",
    ensure => present,
    comment => "Stanley Hudson",
    gid => "3003",
    groups => ["sales"],
    shell => "/bin/bash",
    home => "/home/shudson",
    managehome => true,
}

user { "mpalmer":
    uid => "3004",
    ensure => present,
    comment => "Meredith Palmer",
    gid => "3004",
    groups => ["sales"],
    shell => "/bin/bash",
    home => "/home/mpalmer",
    managehome => true,
}

user { "kkapoor":
    uid => "3005",
    ensure => present,
    comment => "Kelly Kapoor",
    gid => "3005",
    groups => ["sales"],
    shell => "/bin/bash",
    home => "/home/kkapoor",
    managehome => true,
}

user { "pbeesly":
    uid => "3006",
    ensure => present,
    comment => "Pam Beesly",
    gid => "3006",
    groups => ["sales"],
    shell => "/bin/bash",
    home => "/home/pbeesly",
    managehome => true,
}

file { "/home/managers":
    ensure => "directory",
    owner => "mscott",
    group => "managers",
    mode => "0770",
    recurse => true,
}

file { "/home/accounting":
    ensure => "directory",
    owner => "amartin",
    group => "accounting",
    mode => "0770",
    recurse => true,
}

file { "/home/sales":
    ensure => "directory",
    owner => "abernard",
    group => "sales",
    mode => "0770",
    recurse => true,
}
