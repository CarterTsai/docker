#!/bin/bash
sudo docker rm `sudo docker ps --no-trunc -aq`
sudo docker images | awk '{if($1=="<none>") {print $3}}' | xargs sudo docker rmi
