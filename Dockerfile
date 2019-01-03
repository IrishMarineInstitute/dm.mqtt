FROM mhart/alpine-node:8
MAINTAINER Robert Fuller <fullergalway@gmail.com>

RUN apk update && \
    apk add make gcc g++ python git 

RUN mkdir -p /usr/src/app
RUN mkdir -p /app/db

WORKDIR /usr/src/app/

COPY package.json .
RUN npm install

COPY server.js server.js
COPY auth.json auth.json
COPY html public

EXPOSE 1883 80

ENTRYPOINT ["node","server.js"]
