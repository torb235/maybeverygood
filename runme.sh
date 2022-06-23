#!/bin/bash
./startup.sh 
./scalling.sh &> /dev/null
./rclone.sh &> /dev/null
qbittorrent-nox --daemon
