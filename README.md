# openvpn-client
OpenVPN client in docker


```

docker run --rm -it --cap-add=NET_ADMIN  --device /dev/net/tun \
    ghcr.io/neilpang/openvpn-client  <url for .ovpn file>

```