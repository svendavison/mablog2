#!/bin/bash
docker cp target/IMR*.war $(docker ps -aqf "name=mablog2_IMRUtomcat"):/usr/local/tomcat/webapps/IMRUnicorn.war
