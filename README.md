# Raspberry Pi Set Up Guide

This guide serves as a reminder of how to set up a Raspberry Pi running Raspbian - Jessie.

## Connecting to the internet

To get started you will need to connect your Raspberry Pi to the internet. If you are comfortable using the command line then you can type the following, obviously replacing `THE-NAME-OF-YOUR-WIFI` and `YOUR-WIFI-PASSWORD` with the actual values:

`sudo printf "\niface wlan0 inet dhcp\n\twpa-ssid \"THE-NAME-OF-YOUR-WIFI\"\n\twpa-psk \"YOUR-WIFI-PASSWORD\"" >> /etc/network/interfaces`