FROM node:12.7.0-alpine

WORKDIR /app

RUN yarn global add @vue/cli

CMD ["/bin/sh"]
