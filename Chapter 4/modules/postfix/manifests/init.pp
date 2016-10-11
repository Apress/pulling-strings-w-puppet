class postfix {

$mailadmin = "postmaster@$domain"

$packagelist = ["postfix.$architecture", "postfix-pflogsumm.$architecture"]

package { $packagelist:
       ensure => "installed"
}

postfix::postfix_files { 

"/etc/aliases.db":
       mode   => "0640",
       source => "aliases.db";

"/etc/postfix/main.cf":
       source  => "main.cf";

"/etc/postfix/master.cf":
       source  => "master.cf"
}
service { "postfix":
       enable  => "true",
       ensure  => "running",
       require => Package["postfix.$architecture"]
}

cron { pflogsumm:
       hour    => 2,
       minute  => 15,
       user    => mail,
       command => "/usr/sbin/pflogsumm -d yesterday /var/log/maillog | mail -s 'pflogsumm from $fqdn' $mailadmin",
       require => Package["postfix-pflogsumm.$architecture"]
}
}
