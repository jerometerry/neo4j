neo4j
=====

### Install Docker
[Install Docker](https://docs.docker.com/installation/) if you don't already have it. 

Windows and Mac OS X require boot2docker, which has dependencies on [Virtual Box](https://www.virtualbox.org/wiki/Downloads)

To test docker is installed properly

docker --vesrion

### Checkout
git clone https://github.com/jerometerry/neo4j.git

### Building docker container
cd neo4j

docker build -t jterry/neo4j .

Alternatively, you can just run build.sh (or build.cmd on Windows)

### Running docker container

docker run -it --name neo4j -p 7474:7474 -p 1337:1337 jterry/neo4j

Alternatively, you can just run run.sh (or run.cmd on Windows)

### Open neo4j in browser
http://localhost:7474

### Default Credentials
Username: neo4j

Password: password

### Networking

To get http://localhost:7474 to work using boot2docker, you can forward port 7474 out of the boot2docker vm in Virtualbox, mapping to the same pot. this is a bit hacky, but it works. 

Instead of using localhost, you could probably use the ip addresss of boot2docker itself, although I havent tried. See http://webiphany.com/technology/2014/06/12/what-ip-do-i-access-when-using-docker-and-boot2docker.html
