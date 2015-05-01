#!/bin/bash
NEO4J_HOME=/var/lib/neo4j
sed -i "s|#org.neo4j.server.webserver.address=0.0.0.0|org.neo4j.server.webserver.address=$HOSTNAME|g" $NEO4J_HOME/conf/neo4j-server.properties
mkdir $NEO4J_HOME/data/dbms
echo "neo4j:SHA-256,E218A33CC4291A4972DB27EA09900E204521B8837E6DADC4004131D2C82011A8,8200BAEA75FE46451827B020D7DDC58E:" >> $NEO4J_HOME/data/dbms/auth
ulimit -n 65536
.$NEO4J_HOME/bin/neo4j console