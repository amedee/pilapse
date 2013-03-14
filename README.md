pilapse
=======

Time-lapse videos with Raspberry Pi

Preparation
-----------

* Install the default [Raspbian](http://www.raspbian.org/) image from the 
  [Raspberry Pi](http://www.raspberrypi.org) [download](http://www.raspberrypi.org/downloads) 
  page and get your Raspberry Pi up and running.
* Connect any 'el cheapo' USB webcam, but first make sure that it is supported. Check this list: http://www.ideasonboard.org/uvc/
  I used a Microsoft webcam.
  If you are also connecting a wifi dongle to have network access then I recommend using a powered USB hub.

Installation
------------
* Install uvccapture for capturing images:

        sudo apt-get install uvccapture

* Install mplayer, mencoder and imagemagick for image and video manipulation:

        sudo apt-get install mplayer mencoder ffmpeg imagemagick

* Install ntpdate to have correct timestamps:

        sudo apt-get install ntpdate
        sudo ntpdate -u ntp.ubuntu.com
