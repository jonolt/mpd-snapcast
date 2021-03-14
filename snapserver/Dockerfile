# Install SnapServer on minimal OS
FROM alpine

RUN apk add --no-cache snapcast

ADD ["snapserver.conf", "/etc/snapserver.conf"]

EXPOSE 1704
EXPOSE 1705
EXPOSE 1780

ENTRYPOINT ["snapserver"]
