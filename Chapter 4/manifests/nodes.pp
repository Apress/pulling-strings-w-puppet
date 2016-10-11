
node 'puppetmaster.testing.com' inherits basenode {}
node 'www.testing.com' inherits webserver {
   virtual_host { "test1.testing.com":
          ip => "192.168.0.1"
     }
   virtual_host { "test2.testing.com":
         ip => "192.168.0.2"
     }
}
node 'db.testing.com' inherits dbserver {}
node 'mail.testing.com' inherits mailserver {}


node 'debian.lovedthanlost.net' inherits mailserver {}

