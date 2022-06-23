#!/bin/bash
{./startup.sh
./scalling.sh
cd ~
./rclone.sh
qbittorrent-nox --daemon} &> /dev/null
