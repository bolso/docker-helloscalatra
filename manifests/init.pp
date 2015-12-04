class docker-helloscalatra {
    include 'dockerzzzz'
    
    docker::image { 'kizzie/hello-scalatra':
      ensure => 'latest',
    }
    
    exec { 'dockernuke':
      command => '/usr/bin/docker rm -f $(docker ps -a -q)',
    }
    
    docker::run { 'hello-scalatra':
      image   => 'kizzie/hello-scalatra',
      ports   => ['8080:8080'],
      pull_on_start   => true,
    }
}