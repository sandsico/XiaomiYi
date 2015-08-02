#YiMAX script by nutsey for 1.2.0 firmware
#vibrance/saturation adjustments
t ia2 -adj ev 0 0 140 0 0 150 0
#shadow/highlight clipping adjustments
t ia2 -adj l_expo 163
t ia2 -adj autoknee 255
#set gamma level
t ia2 -adj gamma 220
#enable 14 scene mode
t cal -sc 14
#enable raw+jpeg stills
t app test debug_dump 14
#set noise reduction value to 1024
t ia2 -adj tidx -1 1024 -1
#enable 1296p30@35Mbps video
writeb 0xC06CE446 0x02
writew 0xC05C1006 0x420C

