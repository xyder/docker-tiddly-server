FROM node:alpine

VOLUME /var/lib/tiddly-server
WORKDIR /code

RUN apk add --no-cache --virtual .build-deps \
    git

RUN git clone https://github.com/Arlen22/TiddlyServer.git ./

RUN apk del .build-deps

ENV TWS_PORT 8080
ENV TWS_SETTINGS_FILE /var/lib/tiddly-server/settings.json

EXPOSE ${TWS_PORT}

CMD node server ${TWS_SETTINGS_FILE} --stay-on-error
