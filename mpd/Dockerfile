#
# Dockerfile for mpd
#

FROM alpine

RUN set -xe \
    && apk add --no-cache mpd mpc ncmpc dumb-init \
    && setcap -r /usr/bin/mpd \
    && addgroup mpd root

VOLUME ["/var/lib/mpd"]
VOLUME ["/var/lib/mpd/music"]
VOLUME ["/tmp"]

ADD ["start.sh", "/start.sh"]
ADD ["mpd.conf", "/etc/mpd.conf"]

EXPOSE 6600

ENTRYPOINT ["/start.sh"]
# USER mpd

CMD ["mpd", "--stdout", "--no-daemon", "-v"] 
