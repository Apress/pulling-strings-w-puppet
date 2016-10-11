class mysql_user {
       user { "mysql":
       ensure  => "present",
       uid     => "501",
       gid     => "501",
       comment => "MySQL",
       home    => "/var/lib/mysql",
       shell   => "/sbin/nologin",
       }
}
