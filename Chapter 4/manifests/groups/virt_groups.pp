class virt_groups {
       @group { "staff":
              gid    => "1000",
	      ensure => present,
       }

       @group { "administration":
              gid    => "1501",
              ensure => present, 
       }

       @group { "mail_team":
              gid    => "1502",
              ensure => present,
       }
}
