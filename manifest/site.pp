node default {
  file {'/root/README2':
    ensure => file,
    content => 'this is a readme2',
   }
}
