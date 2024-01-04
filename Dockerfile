FROM nodered/node-red:2.2.2-12
USER root
RUN apk update && apk upgrade && apk add sqlite
USER node-red
RUN npm install node-red-contrib-advanced-ping \
                node-red-contrib-clock-generator \
                node-red-contrib-countdown \
                node-red-contrib-counter \
                node-red-contrib-fs-ops \
                node-red-contrib-hourglass \
                node-red-contrib-interval-length \
                node-red-contrib-modbus \
                node-opcua@2.110 \
                node-opcua-client-crawler@2.110 \
                node-opcua-file-transfer@2.110 \
                node-red-contrib-opcua@0.2.313 \
                node-red-contrib-os \
                node-red-contrib-queued-sqlite-fix \
                node-red-contrib-s7 \
                node-red-contrib-telegrambot \
                node-red-contrib-ui-led \
                node-red-dashboard \
                node-red-node-email@1 \
                node-red-node-sqlite \
                sqlite-plugin-red \
                https://github.com/greylogixbrasil/node-red-contrib-google-cloud.git
