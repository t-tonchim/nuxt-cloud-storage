FROM node:10.15.3-alpine

WORKDIR /usr/src/app

RUN apk update && \
    apk add git && \
    npm i -g npm && \
    npm i -g vue-cli && \
    npm i -g create-nuxt-app
COPY package.json /usr/src/app/package.json
RUN npm i

ENV HOST 0.0.0.0
EXPOSE 3000
