# Building & Running

[https://github.com/bgh0425/dockertest.git](https://github.com/bgh0425/dockertest.git)

Copy the sources to your docker host and build the container, and to run.
```
	docker build --rm -t bgh0425/ubuntu .
	docker run -it --name c1 bgh0425/ubuntu
```
Get the port that the container is listening on:

```
# docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
ad2ad96e4b2f        bgh0425/ubuntu      "/bin/bash"         7 seconds ago       Up 6 seconds                            c1
```

To test,
```
  TRY "ifconfig"
  TRY "tree"
  TRY "curl google.com"

```
To Rollback
```
    docker rm c1 -f
    docker rmi bgh0425/ubuntu
```
