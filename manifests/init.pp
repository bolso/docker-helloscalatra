class docker-helloscalatra {

	include 'docker'

	docker::image { 'jads/hello-scalatra-jenkins':
		image_tag => 'latest',
	}

	docker::run { 'hohoho':
		image => 'jads/hello-scalatra-jenkins',
		ports => '8080:8080',
	}
}
