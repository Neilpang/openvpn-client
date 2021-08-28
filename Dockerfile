FROM alpine


COPY entry.sh /entry.sh

RUN apk --no-cache --no-progress add curl openvpn tini \
  && chmod +x /entry.sh
  


VOLUME ["/vpn"]

WORKDIR "/vpn"

ENTRYPOINT ["/sbin/tini", "--", "/entry.sh"]




