import "templates.pp"
import "nodes.pp"
import "groups/*"
import "users/*"
import "os/*"
import "classes/*"


filebucket { main: server => puppet }
File { backup => main }
