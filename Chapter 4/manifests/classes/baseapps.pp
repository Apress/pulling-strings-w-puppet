class baseapps {

       $packagelist = ["joe", "perl", "rubygems"]

       package { $packagelist:
              ensure => installed }
}

class sshd {

case $operatingsystem {
       fedora: { $ssh_packages = ["openssh", "openssh-server", "openssh-clients"] }
       debian: { $ssh_packages = ["openssh-server", "openssh-client"] }
       default: { $ssh_packages = ["openssh", "openssh-server"] }
}

       package { $ssh_packages: ensure => installed }

       service { sshd: 
              name => $operatingsystem ? {
                  fedora => "sshd",
                  debian => "ssh",
                  default => "sshd",
                  },
              enable => true,
              ensure => running
       }

}
