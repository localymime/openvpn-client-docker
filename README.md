docker run --cap-add NET_ADMIN --device /dev/net/tun --volume {{config.ovpn FILE LOCATION ON HOST }}:/vpn/config --name {NAME} {IMAGE NAME}