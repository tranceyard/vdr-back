#!/bin/sh

/usr/bin/vdr -P dummy -P streamdev-server -P xvdr -P vnsiserver -P live -P 'epgsearch --config=/etc/vdr/plugins/epgsearch' -P ddci2 -v /srv/vdr/video

