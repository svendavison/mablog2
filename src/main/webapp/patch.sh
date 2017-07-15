#!/bin/bash
clear
echo .
echo .
echo "Fetching docker id for imru-tomcat..."
IMGID=$(docker ps | grep imru-tomcat | awk '{print $1; exit}')
echo "ID: $IMGID"
echo "Copying context.xml to patch database connection..."
docker cp context.xml $IMGID:/usr/local/tomcat/webapps/IMRUnicorn/META-INF/context.xml
echo "Restarting docker via docker-compose..."
docker-compose restart

echo "---- Waiting a few seconds for tomcat to start ----"
 
sleep 10
echo "Building database from code first..."
curl -s -o /dev/null -v "http://localhost/IMRUnicorn/buildDB.jsp"