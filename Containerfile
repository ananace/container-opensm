FROM alpine:edge

RUN tail -n 1 /etc/apk/repositories | sed 's/community/testing/' >> /etc/apk/repositories \
 && apk add --no-cache opensm

 ENTRYPOINT ["/usr/sbin/opensm", "-f", "stdout"]
