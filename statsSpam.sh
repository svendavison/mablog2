#!/bin/bash

#docker stats --no-stream > /tmp/dockerStats.out

docker stats $(docker ps --format={{.Names}}) --no-stream > /tmp/dockerStats.out
