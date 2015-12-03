include 'docker'

class docker-helloscalatra {

	package { 'docker':

		ensure => present,
	}

	docker::image { 'jads/hello-scalatra-jenkins':
		image_tag => 'latest'
	}

	docker::run { 'hohoho':
		image => 'jads/hello-scalatra-jenkins',
	}
}

