FROM node:16.20.2-alpine AS node
FROM nodered/node-red:2.2.2-16
COPY --from=node /usr/lib /usr/lib
COPY --from=node /usr/local/share /usr/local/share
COPY --from=node /usr/local/lib /usr/local/lib
COPY --from=node /usr/local/include /usr/local/include
COPY --from=node /usr/local/bin /usr/local/bin
RUN npm install npm@7.5.2
USER root
RUN apk update && apk upgrade && apk add sqlite
USER node-red
