neo4j
=====

### Building docker container
docker build -t jterry/neo4j

### Running docker container
docker run -itd --name neo4j -p 7474:7474 -p 1337:1337 jterry/neo4j

### Open neo4j in browser
http://localhost:7474
