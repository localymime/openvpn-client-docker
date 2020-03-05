

**Running The Container Proxyfied**

`docker run --cap-add NET_ADMIN --device /dev/net/tun --volume {{config.ovpn FILE LOCATION ON HOST }}:/vpn/config -p 0.0.0.0:{{Host Port}}:31330/tcp --dns=8.8.8.8 --name {NAME} {IMAGE NAME}`