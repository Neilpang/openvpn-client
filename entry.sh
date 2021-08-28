#!/usr/bin/env sh



url=$1

if [ "$url" ]; then
  curl -L "$url" >/vpn/client.ovpn

fi


openvpn --config client.ovpn
