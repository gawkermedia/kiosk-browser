#!/bin/bash

modprobe r8723bs

mkdir /var/run/wpa_supplicant
wpa_supplicant -i wlan0 -C /var/run/wpa_supplicant/ -c /etc/wpa_supplicant/wpa_supplicant.conf -B

sleep 15
dhclient wlan0
sleep 10
service ssh restart

