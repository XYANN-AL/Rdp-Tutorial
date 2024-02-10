#!/bin/bash

me=whoami

export DEBIAN_FRONTEND=noninteractive

apt-get update && apt-get install -y ubuntu-desktop xfce4 xrdp xfce4 xfce4-goodies
echo xfce4-session > ~/.xsession
 
 cp /home/ubuntu/.xsession /etc/skel 
 
 sed -i 's/port=-1/port=ask-1/g' /etc/xrdp/xrdp.ini
 
 service xrdp restart
 
 echo "Finished"
