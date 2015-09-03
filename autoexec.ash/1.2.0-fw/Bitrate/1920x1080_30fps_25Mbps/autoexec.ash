#YiMAX-movie script by nutsey for 1.2.10 firmware
#This script is for video mode!
t ia2 -adj ev 10 0 60 0 0 140 0
#shadow/highlight clipping adjustments
t ia2 -adj l_expo 163
t ia2 -adj autoknee 255
#set gamma level
t ia2 -adj gamma 220
#enable 1296p30@30Mbps video
writeb 0xC06CE446 0x02
writew 0xC05C3016 0x41F0
#enable raw+jpeg stills
t app test debug_dump 14
sleep 9
#load GoPrawn config
t cal -ituner load d:\goprawn.config
sleep 1
#fix ae/awb/adj locks
t ia2 -3a 1 1 0 1
#ready beep
t pwm 1 enable
sleep 1
t pwm 1 disable
#Set jpg Quality to 100
writeb 0xC0BC205B 0x64​
