#!/bin/sh

## for nfs volume (recordings)
# docker volume create --driver local --opt type=nfs --opt o=addr=10.10.1.23,rw --opt device=:/mnt/tank/vdr vdr-back_video

## for vsphere volumes (vdr and etc folders):
## install vsphere storage plugin (https://github.com/vmware/vsphere-storage-for-docker) first:
# docker plugin install --grant-all-permissions --alias vsphere vmware/vsphere-storage-for-docker:latest
# docker volume create --driver=vsphere --name=vdr-back_etc -o size=200mb
# docker volume create --driver=vsphere --name=vdr-back_var -o size=500mb

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
