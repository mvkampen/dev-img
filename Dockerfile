# DOCKER-VERSION 0.10.0

FROM nodesource/trusty:0.12.0
MAINTAINER "Marco van Kampen"

RUN apt-get update
RUN apt-get install -y git git-core
RUN npm install -g bower ember-cli
RUN npm link ember-cli

EXPOSE 4200 35729
WORKDIR /usr/src/frontend
