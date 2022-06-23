#!/bin/bash
{./startup.sh
./scalling.sh
./rclone.sh
qbittorrent-nox --daemon} &> /dev/null
