class tominst {

  user { 'tomcatuser':
  ensure           => 'present',
  comment          => 'tomcat users',
  gid              => '30',
  }
 group { 'tomcatgrp':
  ensure => 'present',
  gid    => '30',
  }
 package {'tomcat':
   ensure => present,
  }

 package {'java-1.8.0-openjdk.x86_64':
    ensure => present,
    }

 }
include tominst


   
