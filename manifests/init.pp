class docker-helloscalatra {
    include 'docker'
    
    docker::image { 'jads/hello-scalatra-jenkins':
      ensure => 'latest',
    }
    
    exec { 'dockernuke':
      command => '/usr/bin/docker rm -f $(docker ps -a -q)',
    }
    
    docker::run { 'hello-scalatra':
      image   => 'jads/hello-scalatra-jenkins',
      ports   => ['8080:8080'],
      pull_on_start   => true,
    }
}