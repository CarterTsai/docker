#!/bin/bash

sudo docker build -t carter/mongodb .

#run
#sudo docker run \ 
#    --name mongodb1 \
#    -d carter/mongodb --noprealloc --smallfiles
