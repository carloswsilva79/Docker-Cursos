FROM node:10.20.1-alpine3.11

ENV environment=production

WORKDIR /usr/src/app

RUN apk update; npm install express

ADD app.js .

ENTRYPOINT [ "node","app.js" ]








