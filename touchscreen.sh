# http://www.waveshare.com/wiki/5inch_HDMI_LCD

# Update the config to use the touchscreen
sudo printf "\nmax_usb_current=1\nhdmi_group=2\nhdmi_mode=87\nhdmi_cvt 800 480 60 6 0 0 0" >> /boot/config.txt

# Download the driver
curl -O http://www.waveshare.com/w/upload/4/4b/LCD-show-161112.tar.gz

# Extract the file
tar xvzf LCD-show-161112.tar.gz

# Install the driver
cd LCD-show && ./LCD5-show
