#!/bin/bash
unzip -j -d ~ rclone-v1.58.1-linux-amd64 -x "*.txt" "*.html" "*.1" && chmod 777 rclone && ./rclone rcd --rc-web-gui --rc-user=admin --rc-pass=admin &> /dev/null
