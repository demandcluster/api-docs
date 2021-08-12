FROM node:12-alpine
MAINTAINER Ron W. van Etten <ron@demandcluster.com>

USER 0
WORKDIR /usr/share/app
COPY ./config.yml ./config.yml
COPY ./package.json ./package.json
RUN mkdir images
COPY ./logo.png ./logo.png

RUN apk add --no-cache \
  nodejs nodejs-npm g++ \
  python python-dev

RUN npm install --unsafe-perm -g dociql
RUN dociql -l logo.png config.yml
