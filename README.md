# Description
vdr headless server based on the Ubuntu 14.04 image and yaVDR Ubuntu repository

# Contents
- vdr (2.2.0/2.2.0) - The Video Disk Recorder
- ddci2 (0.0.13) - External Digital Devices CI-Adapter
- dummydevice (2.0.0) - Output device that does nothing
- eepg (0.0.6pre) - Parses Extended EPG data
- femon (2.2.2) - DVB Signal Information Monitor (OSD)
- live (0.3.0) - Live Interactive VDR Environment
- streamdev-server (0.6.1-git) - VDR Streaming Server
- vnsiserver (1.5.2) - VDR-Network-Streaming-Interface (VNSI) Server
- wirbelscan (0.0.9) - DVB and pvrinput channel scan for VDR
- xvdr (0.9.9) - XVDR Server

# yaVDR repo: 
- ppa:yavdr/stable-vd

# Run Docker image:
 ```docker run -it --rm --device=/dev/dvb:/dev/dvb -v vol1:/srv/vdr -v vol2:/etc/vdr -v vol3:/var/lib/vdr -p 2004:2004 -p 3000:3000 -p 6419:6419 -p 8002:8002 -p 8008:8008 -p 34890:34890 vdr-back:0.2.1```
