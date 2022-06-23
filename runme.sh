#!/bin/bash
./startup.sh
./scalling.sh &> /dev/null
./rclone.sh
qbittorrent-nox --daemon
