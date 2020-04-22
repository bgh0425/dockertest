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
4c43f8260fc9        bgh0425/ubuntu      "/bin/bash"         7 seconds ago       Up 6 seconds                            c1
```

To test,
```
  TRY "ifconfig"
  root@8b8f5a966334:/# ifconfig
  eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.17.0.2  netmask 255.255.0.0  broadcast 172.17.255.255
        ether 02:42:ac:11:00:02  txqueuelen 0  (Ethernet)
        RX packets 34  bytes 3432 (3.4 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 19  bytes 1242 (1.2 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

  lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0


  TRY "tree"
  |-- mail
     |-- opt
     |-- run -> /run
     |-- spool
     |   `-- mail -> ../mail
     `-- tmp


  TRY "curl google.com"
  root@8b8f5a966334:/# curl google.com
  <HTML><HEAD><meta http-equiv="content-type" content="text/html;charset=utf-8">
  <TITLE>301 Moved</TITLE></HEAD><BODY>
  <H1>301 Moved</H1>
  The document has moved
  <A HREF="http://www.google.com/">here</A>.
  </BODY></HTML>

```
To Rollback
```
    docker rm c1 -f
    docker rmi bgh0425/ubuntu
```
