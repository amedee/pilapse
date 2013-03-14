#! /bin/bash
# Time-lapse capture script
# Author : Samuel El-Borai
# Date : 29 juin 2010
# Tested with : The iSight of my MacBook Pro 5.1, ArchGNULinux kernel 2.6.34.
#		Both camera of my N900, running Maemo PR 1.2
# Need : mplayer , mencoder
# Lisense : BSD

if test $# -ne 2; then
	echo 'Need two arguments : time(seconds) and frames(integer)'
	exit 0
fi

if test $1 -eq 0; then
	echo 'Time value must be greater than 0'
	exit 0
fi


if test $2 -eq 0; then
	echo 'Frames value must be greater than 0'
	exit 0
fi

#Change nb_frame (1-9) if you have green pictures.
nb_frame=3
t=$1

echo $f
 
rep='motion_'$(date '+%y%m%d%H')

mkdir $rep
cd $rep

for i in `seq 1 $2`;
do
	mplayer -really-quiet tv:// -vo png -frames $nb_frame;
		case ${#i} in
			1) n='0000'$i;;
			2) n='000'$i;;
			3) n='00'$i;;
			4) n='0'$i;;
			5) n=$i;;
			*) echo "More than 99999 frames. Hug ! It's over NINE THOUSAND !!! (This script can't manage more than 99999 frames. Sorry Dude.)"
				exit 0;;
		esac

		echo $n
	mv 0000000$nb_frame.png screen_$n.png
	rm 0*.png

# Time to echo remaining (Change time_to_echo to the minimum time you want between each echo)
	time_to_echo=10
	w=0
	
	if test $t -gt $time_to_echo
	then
		while test $(expr $w + $time_to_echo) -lt $t
		do
			sleep $time_to_echo
			w=$(expr $w + $time_to_echo)
			echo $(expr $t - $w)' seconds to wait'
		done
		#echo 'I will sleep '$(expr $t - $w)' seconds. TEST STATEMENT zOLOL RULEZ'
		sleep $(expr $t - $w)
	else
		sleep $t
	fi
	echo 'Frames '$i' / '$2
done

mencoder "mf://*.png" -mf fps=12:type=png -ovc lavc -lavcopts vcodec=mpeg4:mbd=2:trell:vbitrate=7000 -vf scale=640:480 -oac copy -o movie_$rep.avi

exit 0