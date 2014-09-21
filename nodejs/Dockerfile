# DOCKER-VERSION 0.9.1
FROM    ubuntu:14.04

# Install Node.js
RUN     apt-get update && apt-get upgrade -y
RUN     apt-get install -y nodejs npm

# Bundle app source
ADD app /srv/app

# Install app dependencies
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN cd /srv/app; npm install

VOLUME ['/srv/app']

EXPOSE 3000

WORKDIR /srv/app/
CMD ["npm","start"]
