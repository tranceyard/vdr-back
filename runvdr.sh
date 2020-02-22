#!/bin/sh

/usr/bin/vdr --chartab=ISO-8859-9 --port=6419 -P svdrposd -P svdrpservice -P dummydevice -P epgsearch -P streamdev-server -P vnsiserver -P live -P 'epgsearch --config=/etc/vdr/plugins/epgsearch' -P ddci2 -v /srv/vdr/video

