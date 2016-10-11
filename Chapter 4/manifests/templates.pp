node basenode { 
       case $operatingsystem {
              fedora: { include fedora }
              debian: { include debian }
              default: { include fedora}
       }
#       include baseapps, sshd, 
        include staff, administrators
}

node default inherits basenode {}

node webserver inherits basenode {
       include apache
}
node dbserver inherits basenode {
       include mysql
}
node mailserver inherits basenode {
#       include postfix
       include mail_team
}
