FROM    ubuntu:14.04

MAINTAINER Ming-Hsien, Tsai <hamming1@gmail.com>

# Installation:
# Import MongoDB public GPG key AND create a MongoDB list file
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' \ 
    | tee /etc/apt/sources.list.d/10gen.list

RUN apt-get update && apt-get install -y mongodb-org

RUN apt-get update && apt-get install -y \ 
    mongodb-org=2.6.4 \ 
    mongodb-org-server=2.6.4 mongodb-org-shell=2.6.4 \ 
    mongodb-org-mongos=2.6.4 mongodb-org-tools=2.6.4

RUN mkdir -p /data/db

VOLUME ["./data/db", "/data/db"]

# private and public mapping
#EXPOSE 27017:27017

# private only
#EXPOSE 27017

# Set /usr/bin/mongod as the dockerized entry-point application
ENTRYPOINT /usr/bin/mongod
