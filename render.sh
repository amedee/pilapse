#! /bin/bash -e
# Time-lapse render script
# Author : Amedee Van Gasse
# Date : 27 April 2013
# Tested with : Logitech Portable Webcam C910, Raspbian kernel 3.6.11-rpi-aufs.
# Need : mencoder
# License : BSD

rep='motion_'$(date '+%Y%m%d%H%M')

mencoder "mf://*.jpg" -mf fps=12:type=jpg -ovc lavc -lavcopts vcodec=mpeg4:mbd=2:trell:vbitrate=7000 -vf scale=1280:720 -oac copy -o movie_$rep.avi

exit 0
