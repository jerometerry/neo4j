neo4j
=====

### Install Docker
[Install Docker](https://docs.docker.com/installation/) if you don't already have it. 

Windows and Mac OS X require boot2docker, which has dependencies on [Virtual Box](https://www.virtualbox.org/wiki/Downloads)

To test docker is installed properly

```
docker --vesrion
```

### Checkout

```
git clone https://github.com/jerometerry/neo4j.git
```

### Building docker container

```
cd neo4j
docker build -t jterry/neo4j .
```

Alternatively, you can just run build.sh (or build.cmd on Windows)

### Running docker container

```
docker run -it --name neo4j -p 7474:7474 -p 1337:1337 jterry/neo4j
```

Alternatively, you can just run run.sh (run.cmd on Windows). Run.sh / run.cmd run the docker container detached, giving you access to the command line again after starting the container. 

You can also run debug.sh (debug.cmd on Wndows) to run and attach to the container, so that you an see console output from the neo4j server. If you use this method, then you stop the container with CTRL + C.

### Open neo4j in browser

http://localhost:7474

If running in boot2docker, you either have to expose port 7474 out of the boot2docker VM, or you'll need to use the ip address of boot2docker

The command 

```
boot2docker ip
```

will give you the ip address of the boot2docker VM.

