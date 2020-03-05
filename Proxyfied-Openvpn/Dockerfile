FROM alpine
RUN apk update
RUN apk upgrade
RUN apk add --no-cache openvpn
RUN apk add --no-cache curl
RUN apk add --no-cache git
RUN apk add --no-cache nodejs
RUN apk add --no-cache npm
RUN npm i -g pm2
RUN git clone https://github.com/localymime/node-simple-proxy.git /home
RUN cd /home && npm i
RUN pm2 start /home/app.js && pm2 save
ADD start.sh /
RUN chmod +x /start.sh
HEALTHCHECK --interval=60s --timeout=15s --start-period=120s \
  CMD curl 'https://api.ipify.org'

VOLUME [ "/vpn/config" ]
CMD ["/start.sh"]