# DOCKER-VERSION 0.9.1
FROM    ubuntu:14.04

# Install Node.js
RUN     apt-get update && apt-get upgrade -y
RUN     apt-get install -y nodejs npm

# Bundle app source
ADD package.json /srv/package.json
ADD run.js /srv/run.js

# Install app dependencies
RUN cd /srv; npm install

EXPOSE 3000

CMD ["nodejs", "/srv/run.js"]
