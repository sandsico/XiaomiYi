#set video resolution to 2560x1440 30fps
writeb 0xC05C0FA6 0x02

#set bitrate to 45Mb/s
writew 0xC05C1006 0x420C
