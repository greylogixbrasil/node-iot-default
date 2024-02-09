FROM nodered/node-red:2.2.2-12
COPY ./package.json ./
COPY ./package-lock.json ./
USER root
RUN chown 1000:1000 package.json
RUN chown 1000:1000 package-lock.json
RUN apk update && apk upgrade && apk add sqlite
USER node-red
RUN touch /data/buffer.db
RUN npm install
