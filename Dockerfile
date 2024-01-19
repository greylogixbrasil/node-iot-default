FROM nodered/node-red:2.2.2-12
USER root
RUN apk update && apk upgrade && apk add sqlite
USER node-red
RUN touch /data/buffer.db
RUN npm install \
  --no-audit \
  --no-update-notifier \
  --no-fund \
  --save \
  --save-prefix=~ \
  --production \
  --engine-strict \
    node-opcua@2.92 \
    node-opcua-client-crawler@2.92 \
    node-opcua-file-transfer@2.92 \
    node-red-dashboard \
    node-red-node-email@1 \
    node-red-node-sqlite \
    node-red-contrib-advanced-ping \
    node-red-contrib-clock-generator \
    node-red-contrib-countdown \
    node-red-contrib-counter \
    node-red-contrib-fs-ops \
    node-red-contrib-hourglass \
    node-red-contrib-interval-length \
    node-red-contrib-modbus \
    node-red-contrib-opcua@0.2.300 \
    node-red-contrib-os \
    node-red-contrib-queued-sqlite-fix \
    node-red-contrib-s7 \
    node-red-contrib-siemens-sentron \
    node-red-contrib-telegrambot \
    node-red-contrib-ui-led \
    sqlite-plugin-red \
    https://github.com/greylogixbrasil/node-red-contrib-google-cloud.git
