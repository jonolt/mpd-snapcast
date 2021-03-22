#!/bin/sh
chown mpd:audio /var/lib/mpd
mkdir /var/lib/mpd/playlists
chown mpd:audio /var/lib/mpd/playlists
ls -all /var/lib/mpd/
exec /usr/bin/dumb-init -- $@
