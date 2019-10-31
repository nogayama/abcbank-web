# ABCBank webapp


## Development

### build image

1. git clone

	```
	git clone git@github.ibm.com:NOGAYAMA/abcbank-webapp.git
	cd abcbank-webapp
	```

1. build image from Dockerfile

	```
	docker image build --tag abcbank-webapp:latest .
	```
1. (optional) smoketest on local

	```
	docker run -d -p 5000:5000 abcbank-webapp:latest
	docker ps 
	curl localhost:5000
	
	docker stop $(docker ps -lq)
	docker rm   $(docker ps -lq)
	```

### upload the image

1. make sure user account on [DockerHub](https://hub.docker.com)

1. create a new tag of the image

	```
	$ docker image list 
	REPOSITORY                                 TAG                 IMAGE ID            CREATED             SIZE
	abcbank-webapp                             latest              b48c890a6c82        9 minutes ago       
	```
	
	```
	docker image tag b48c890a6c82 nogayama/abcbank-webapp:latest
	```

1. push the image to dockerhub

	```
	docker image push nogayama/abcbank-webapp:latest
	```

	After pushing, you can see image on DockerHub e.g., [nogayama](https://cloud.docker.com/u/nogayama/repository/docker/nogayama/abcbank-webapp)

### pull the image

1. pull the image

	```
	docker image pull nogayama/abcbank-webapp:latest
	```


