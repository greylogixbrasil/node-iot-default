FROM nodered/node-red:2.2.2-12
USER root
RUN apk update && apk upgrade && apk add sqlite
USER node-red
RUN npm install --no-audit --no-update-notifier --no-fund --save --save-prefix=~ --production --engine-strict https://github.com/greylogixbrasil/node-red-contrib-google-cloud.git
