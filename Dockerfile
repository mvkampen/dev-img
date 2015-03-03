# DOCKER-VERSION 0.10.0

FROM ubuntu:trusty

curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get update
RUN apt-get install -y nodejs npm build-essential
RUN npm install -g ember-cli bower

#RUN git clone git@github.com:<user>/<repo>.git ember
#RUN cd ember && ember install
#RUN ember server --proxy http://127.0.0.1:8080
