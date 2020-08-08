#!/bin/sh
/app/setpassword.sh
USER=root vncserver :1 -geometry 1366x768 -depth 24
/app/novnc/utils/launch.sh  --vnc localhost:5901
