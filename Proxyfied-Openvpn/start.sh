#!/bin/sh
pm2 start /home/app.js
openvpn --config /vpn/config/config.ovpn