FROM node:latest

VOLUME /var/lib/tiddly-server
WORKDIR /code

RUN git clone https://github.com/Arlen22/TiddlyServer.git ./


ENV TWS_PORT 8080
ENV TWS_SETTINGS_FILE /var/lib/tiddly-server/settings.json

EXPOSE ${TWS_PORT}

CMD node server ${TWS_SETTINGS_FILE} --stay-on-error
# CMD [ "node", "server" ,"${TWS_SETTINGS_FILE}", "--stay-on-error" ]
