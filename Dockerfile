FROM node:12.7.0-alpine

WORKDIR /app

# Vue CLI のホットリロードを有効にする
ENV CHOKIDAR_USEPOLLING=true

RUN yarn global add @vue/cli

CMD ["/bin/sh"]
