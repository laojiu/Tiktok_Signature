FROM node:16.15.1-alpine

#更换阿里云源
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

# Install app dependencies
RUN apk update && apk upgrade && apk add git

ENV APP_ROOT /www

WORKDIR ${APP_ROOT}
COPY . ${APP_ROOT}

ENV HOST "0.0.0.0"

EXPOSE 3000 24678

