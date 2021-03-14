#!/bin/sh
whoami
ls /var/lib -all
chown mpd:audio /var/lib/mpd
mkdir /var/lib/mpd/playlists
chown mpd:audio /var/lib/mpd/playlists
ls -all /var/lib
exec /usr/bin/dumb-init -- $@
