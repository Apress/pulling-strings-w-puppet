define postfix::postfix_files($owner = root, $group = root, $mode = 644, $source, $backup = false, $recurse = false, $ensure = file) {

    file { $name:
       mode    => $mode,
       owner   => $owner,
       group   => $group,
       backup  => $backup,
       recurse => $recurse,
       ensure  => $ensure,
       require => Package["postfix.$architecture"],
       source  => "puppet:///postfix/$source"
    }
}
