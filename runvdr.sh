#!/bin/sh

/usr/bin/vdr --chartab=ISO-8859-9 -P dummy -P streamdev-server -P xvdr -P vnsiserver -P live -P 'epgsearch --config=/etc/vdr/plugins/epgsearch' -P ddci2 -v /srv/vdr/video

