#!/bin/bash

sudo docker run -p 8080:8080 --name js2 -v $PWD/data:/var/jenkins_home cartertsai/jenkins
