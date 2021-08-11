FROM node:8-alpine
MAINTAINER Ron W. van Etten <ron@demandcluster.com>

USER 0
WORKDIR /opt

RUN apk add --no-cache \
  nodejs nodejs-npm g++ \
  python python-dev

RUN npm install --unsafe-perm -g dociql
RUN npm start