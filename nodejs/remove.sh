#!/bin/bash

sudo docker rm  -f $(cat error.log | grep '^Error' | awk '{print $9}')
sudo docker rmi $(sudo docker images | grep "^<none>" | awk '{print $3}') 2> error.log
sudo docker images | grep "^<none>"
