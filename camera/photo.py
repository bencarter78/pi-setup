import os
from picamera import PiCamera
from time import sleep

directory = '~/Desktop/pi-camera'

if not os.path.exists(directory):
    os.makedirs(directory)

camera = PiCamera()

camera.start_preview()
sleep(5)
camera.capture(directory + '/image.jpg')
camera.stop_preview()