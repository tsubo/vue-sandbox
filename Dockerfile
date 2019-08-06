FROM node:12.7.0-alpine

WORKDIR /app

# Vue CLI のホットリロードを有効にする
ENV CHOKIDAR_USEPOLLING=true

RUN apk update && \
  apk upgrade && \
  apk add --no-cache \
  git

RUN yarn global add @vue/cli

CMD ["/bin/sh"]
