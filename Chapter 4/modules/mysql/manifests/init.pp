class mysql {

$packagelist = ["mysql", "mysql-server", "mysql-libs"]

package { $packagelist: 
       ensure => installed }

file { "/etc/my.cnf":
       owner   => "root",
       group   => "root",
       mode    => "0644",
       replace => true,
       source  => "puppet:///mysql/my.cnf",
       require => Package["mysql-libs"]
}

service { mysqld:
       enable  => "true",
       ensure  => "running",
       require => File["/etc/my.cnf"]
}
}
