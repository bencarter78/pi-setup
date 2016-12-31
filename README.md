# Raspberry Pi Set Up Guide

This guide serves as a reminder of how to set up a Raspberry Pi running Raspbian - Jessie.


## Installing the Operating System (OS)

There are a number of ways to do this depending on what your computer is that you will use to create the OS on your SD Card.

Here is a [guide for installing the OS on your SD Card] (https://www.raspberrypi.org/documentation/installation/installing-images/README.md).

Now insert the SD Card into your Raspberry Pi, connect the power and let's go.


## Connecting to the internet

To get started you will need to connect your Raspberry Pi to the internet. If you are comfortable using the command line then you can type the following, obviously replacing `THE-NAME-OF-YOUR-WIFI` and `YOUR-WIFI-PASSWORD` with the actual values:

`sudo printf "\niface wlan0 inet dhcp\n\twpa-ssid \"THE-NAME-OF-YOUR-WIFI\"\n\twpa-psk \"YOUR-WIFI-PASSWORD\"" >> /etc/network/interfaces`


## Download this repository

Once you have successfully connected to the internet you will need to clone this repository into your home directory.

`cd ~`

`git clone https://github.com/bencarter78/pi-setup.git`


## Basics

To begin with we will need to set up a few basics to make things easier:

- Updating and upgrading the core packages
- Creating some bash aliases
- Making Vim (the terminal editor I prefer to use) a little nicer to work with
- Installing zip

To run this simply type 

`sudo bash init.sh`


## Setting up a touchscreen

This is based on the [Waveshare 5inch HDMI LCD] (http://www.waveshare.com/wiki/5inch_HDMI_LCD).

To install the required drivers and set up just run 

`sudo bash touchscreen.sh`

Once this is complete you will need to calibrate the screen by clicking the "Menu" button on the task bar, choose "Preference" -> "Calibrate Touchscreen" and folow the on-screen instructions.

If you would like an on-screen keyboard then you can access the keyboard: 

**Menu >> Accessories >> Keyboard**

Or if the Keyboard option is not showing go to the following and ensure Keyboard is checked.

**Menu >> Preferences >> Main Menu Editor**


## Setting up a Pi camera

There is a great [getting started guide for the Pi camera] (https://www.raspberrypi.org/learning/getting-started-with-picamera/worksheet/) which also gives you some python scripts that will show you how to start recording videos and images. The scripts available are:

- camera/preview.py (Shows a preview of the camera)
- camera/photo.py (Takes a photo*)
- camera/video.py (Yep, you guessed it, records a video*)
- camera/transparency.py (Alters the transparentcy of the captured video.)

__* Saved to a directory called pi-camera on your desktop.__

### Option 1 - Using the terminal

Enter the terminal using `sudo raspi-config` and selecting `Enable camera`. It will probably ask you to reboot the Raspberry Pi so select *Yes*.

### Option 2 - Through the Desktop

Go to **Menu >> Preferences >> Raspberry Pi Configuration** click the **Interfaces** tab and check **Camera** so that it is enabled.

There are some scripts to get you started in the **camera** directory of this repository. To run any of them simply run the following in the Terminal.

`python camera/name-of-the-file`

When you run `python camera/video.py`, you can view the captured video by running the following command in the Terminal.

`omxplayer video.h264`



