class apache {

$packagelist = ["httpd", "webalizer", "mod_ssl"]

package { $packagelist:
       ensure => "installed"
}

apache::apache_files {

"/etc/httpd/conf/httpd.conf":
   source => "puppet:///apache/httpd.conf"      
}

service { "httpd":
       enable     => "true",
       ensure     => "running",
       hasrestart => "true",
       require    => Package["httpd"]
}
}
