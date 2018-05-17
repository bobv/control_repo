node default {
   file {'/root/README':
     ensure  => file,
     content => 'This a second README',
     owner   => 'root',
   }
}
