FROM nodered/node-red:2.2.2-12
USER root
RUN apk update && apk upgrade && apk add sqlite
USER node-red
RUN npm install node-red-contrib-modbus node-red-contrib-s7 node-red-node-sqlite sqlite-plugin-red https://github.com/greylogixbrasil/node-red-contrib-google-cloud.git
