import os
from picamera import PiCamera
from time import sleep

directory = '~/Desktop/pi-camera'

if not os.path.exists(directory):
    os.makedirs(directory)

camera = PiCamera()

camera.start_preview()
camera.start_recording(directory + '/video.h264')
sleep(10)
camera.stop_recording()
camera.stop_preview()