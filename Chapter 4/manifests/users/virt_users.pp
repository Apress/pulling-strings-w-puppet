class virt_users {
       @user { "jsmith":
              ensure  => "present",
              uid     => "1001",
              gid     => "1000",
              comment => "Jane Smith",
              home    => "/nfs/IT/home/jsmith",
              shell   => "/bin/bash",
       }

       @user { "mjones":
              ensure  => "present",
              uid     => "1002",
	      gid     => "1000",
              comment => "Mary Jones",
              home    => "/nfs/IT/home/mjones",
              shell   => "/bin/bash",
       }
}
