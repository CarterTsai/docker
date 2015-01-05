FROM jenkins:1.585
 
USER root
RUN apt-get update
RUN apt-get install -y nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install -g phantomjs 
RUN npm install -g grunt-cli bower

RUN apt-get -y install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

RUN curl http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.5.tar.gz -o ruby-2.1.5.tar.gz && tar -xzvf ruby-2.1.5.tar.gz && cd ruby-2.1.5/ && ./configure && make && make install

RUN curl http://production.cf.rubygems.org/rubygems/rubygems-2.4.5.tgz -o rubygems-2.4.5.tgz
RUN tar zxvf rubygems-2.4.5.tgz && cd rubygems-2.4.5 && ruby setup.rb
RUN gem install compass sass susy sass-globbing breakpoint

USER jenkins 
