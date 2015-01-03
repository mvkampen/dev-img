# DOCKER-VERSION 0.10.0

FROM ubuntu:trusty

RUN apt-get update
RUN apt-get install -y nodejs npm git git-core
RUN npm install -g ember-cli bower phantomjs

RUN git clone git@github.com:<user>/<repo>.git ember
RUN cd ember && ember install
RUN ember server --proxy http://127.0.0.1:8080
