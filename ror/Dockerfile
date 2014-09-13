FROM    ubuntu:14.04

MAINTAINER Ming-Hsien, Tsai <hamming1@gmail.com>

# Installation:
RUN apt-get update
RUN sudo apt-get install -y git libgdbm-dev libncurses5-dev \
                         automake libtool bison libffi-dev

RUN sudo apt-get install -y curl
# Install rvm
RUN curl -sSL https://get.rvm.io | bash -s stable 

RUN apt-get install -y imagemagick
RUN apt-get install -y libmysqlclient-dev

# Install ruby 2.0.0
RUN /bin/bash --login -c 'rvm install 2.0.0'

#echo \"gem: --no-ri --no-rdoc\" > /root/.gemrc'

# Install Nodejs
RUN sudo apt-get install -y nodejs

RUN /bin/bash --login -c 'source /usr/local/rvm/scripts/rvm && \
    rvm use 2.0.0 && \
    gem install rails --version 4.1.5 && \ 
    gem install capistrano && \ 
    gem install capistrano-ext'

RUN apt-get install -y libmysqlclient-dev
RUN apt-get install -y ruby1.9.1-dev

VOLUME ["/srv/project"]

ADD ./config/run.sh /root/run.sh

# private and public mapping
EXPOSE 3000

WORKDIR /srv/project
ENTRYPOINT /bin/bash --login
