define apache::virtual_host($ip, $ensure = "enabled") {
   $file = "/etc/httpd/conf.d/$name.conf"
   $document_root = "/var/www/html/$name"

   file { $file:
       ensure  => $ensure ? {
           enabled  => present,
           disabled => absent },
       content => template("apache/virtual_host.erb"),
       notify  => Service["httpd"]
   }
 
   file { $document_root:
       ensure  => $ensure ? {
           enabled  => directory,
           disabled => absent },
       require => File["$file"]   
   }
}
