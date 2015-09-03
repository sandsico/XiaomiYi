#video mode
#t ia2 -adj ev 10 0 60 0 0 140 0
#dark/high adj
t ia2 -adj l_expo 163
t ia2 -adj autoknee 255
#set gamma
t ia2 -adj gamma 220
#set video resolution to 2304x1296 30fps
writeb 0xC06CE446 0x02
#set bitrate to 30Mb/s
writew 0xC05C1006 0x41F0
#set ae/awb/adj
t ia2 -3a 1 1 0 1
#ready beep
t pwm 1 enable
sleep 1
t pwm 1 disable
 
