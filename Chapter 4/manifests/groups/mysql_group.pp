class mysql_group {
       group { "mysql":
       gid    => "501",
       ensure => present 
  }
}
			    
