all: test

test: image-thompson-sh hello
	docker run -v "$(PWD):/src" tsh /src/hello

image-thompson-sh: Dockerfile
	docker build -t mcandre/docker-thompson-sh .

publish:
	docker push mcandre/docker-thompson-sh
