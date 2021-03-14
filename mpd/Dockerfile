#
# Dockerfile for mpd
#

FROM alpine

RUN set -xe \
    && apk add --no-cache mpd mpc ncmpc \
    && setcap -r /usr/bin/mpd

VOLUME ["/var/lib/mpd"]

ADD ["mpd.conf", "/etc/mpd.conf"]

EXPOSE 6600

CMD ["mpd", "--stdout", "--no-daemon", "-v"] 
