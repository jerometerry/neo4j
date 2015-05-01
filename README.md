neo4j
=====

### Install Docker
[Install Docker](https://docs.docker.com/installation/) if you don't already have it. 

Windows and Mac OS X require boot2docker, which has dependencies on [Virtual Box](https://www.virtualbox.org/wiki/Downloads)

### Checkout
git clone https://github.com/jerometerry/neo4j.git

### Building docker container
cd neo4j
docker build -t jterry/neo4j .

### Running docker container
docker run -itd --name neo4j -p 7474:7474 -p 1337:1337 jterry/neo4j

### Open neo4j in browser
http://localhost:7474
