#!/bin/sh

docker run --name vdr-back -it -d \
 --restart unless-stopped \
 --device=/dev/dvb:/dev/dvb \
 -v vdr-back_video:/srv/vdr/video \
 -v vdr-back_etc@iscsi-vmw:/etc/vdr \
 -v vdr-back_var@iscsi-vmw:/var/lib/vdr \
 -p 2004:2004 \
 -p 3000:3000 \
 -p 6419:6419 \
 -p 8002:8002 \
 -p 8008:8008 \
 -p 34890:34890 \
 maligin/vdr-back:0.2.8-sky
