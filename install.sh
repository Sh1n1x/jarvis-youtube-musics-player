#!/bin/bash
# This file will be automatically sourced at the installation of your plugin
# Use only if you need to perform changes on the user system such as installing software
sudo apt-get update && apt-get install vlc nohup
sudo sudo apt-get remove -y youtube-dl
sudo wget https://yt-dl.org/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
