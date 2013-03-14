pilapse
=======

Time-lapse videos with Raspberry Pi

Preparation
-----------

* Install the default [Raspbian](http://www.raspbian.org/) image from the 
  [Raspberry Pi](http://www.raspberrypi.org) [download](http://www.raspberrypi.org/downloads) 
  page and get your Raspberry Pi up and running.
* I used a Logitech Portable Webcam C910 (device ID 046d:0821), but you should be able to do this with any compatible USB webcam.
  You can check compatibility on http://www.ideasonboard.org/uvc/
* If you are also connecting a wifi dongle to have network access then I recommend using a powered USB hub.

Installation
------------
* Install uvccapture for capturing images:

        sudo apt-get install uvccapture luvcview vgrabbj fswebcam xawtv

* Install mplayer, mencoder and imagemagick for image and video manipulation:

        sudo apt-get install mplayer mencoder ffmpeg imagemagick

* Install ntpdate to have correct timestamps:

        sudo apt-get install ntpdate
        sudo ntpdate -u ntp.ubuntu.com
