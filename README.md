# Description
vdr headless server based on the Ubuntu 14.04 image and yaVDR Ubuntu repository

# Contents
- vdr (2.2.0/2.2.0) - The Video Disk Recorder
- conflictcheckonly (0.0.1) - Direct access to epgsearch's conflict check menu
- ddci2 (0.0.13) - External Digital Devices CI-Adapter
- dummydevice (2.0.0) - Output device that does nothing
- eepg (0.0.6pre) - Parses Extended EPG data
- epgsearch (1.0.1.beta5) - search the EPG for repeats and more
- epgsearchonly (0.0.1) - Direct access to epgsearch's search menu
- femon (2.2.2) - DVB Signal Information Monitor (OSD)
- live (0.3.0) - Live Interactive VDR Environment
- quickepgsearch (0.0.1) - Quick search for broadcasts
- streamdev-server (0.6.1-git) - VDR Streaming Server
- vnsiserver (1.5.2) - VDR-Network-Streaming-Interface (VNSI) Server
- wirbelscan (0.0.9) - DVB and pvrinput channel scan for VDR
- xvdr (0.9.9) - XVDR Server

# yaVDR repo
- ppa:yavdr/stable-vdr

# channels.conf
http://channelpedia.yavdr.com/gen/DVB-S/S19.2E/S19.2E_complete_sorted_by_groups.channels.conf

# Run Docker image
 ```docker run --name vdr-back -it -d  --restart unless-stopped --device=/dev/dvb:/dev/dvb -v /srv/vdr/video:/srv/vdr/video -v vdr_etc:/etc/vdr -v vdr_varlib:/var/lib/vdr -p 2004:2004 -p 3000:3000 -p 6419:6419 -p 8002:8002 -p 8008:8008 -p 34890:34890 maligin/vdr-back:latest```
### where:
- ```/srv/vdr/videos``` is the recordings directory
- ```/dev/dvb``` is the DVB-S2 card
- ```vdr_etc``` and ```vdr_varlib``` are the volumes to store the persistent changes in "channels.conf" or "setup.conf"


