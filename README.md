pilapse
=======

Time-lapse videos with Raspberry Pi

Installation
------------

* Install the default [Raspbian](http://www.raspbian.org/) image from the 
  [Raspberry Pi](http://www.raspberrypi.org) [download](http://www.raspberrypi.org/downloads) 
  page and get your Raspberry Pi up and running.
* Connect any 'el cheapo' USB webcam, but first make sure that it is supported. I used a Microsoft webcam.
  If you are also connecting a wifi dongle to have network access then I recommend using a powered USB hub.
* Install a couple of required packages:

        sudo apt-get install uvccapture mplayer mencoder imagemagick
