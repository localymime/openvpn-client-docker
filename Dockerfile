FROM alpine
RUN apk update
RUN apk upgrade
RUN apk add --no-cache openvpn
RUN apk add --no-cache curl
HEALTHCHECK --interval=60s --timeout=15s --start-period=120s \
  CMD curl 'https://api.ipify.org'

VOLUME [ "/vpn/config" ]

CMD [ "openvpn", "--config", "/vpn/config/config.ovpn" ]