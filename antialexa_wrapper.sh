#!/bin/bash
export HOME=/home/cosmo
export XDG_RUNTIME_DIR=/run/user/1000
/home/cosmo/Desktop/projects/antialexa-v2/alexa_remote_control.sh -e vol:0 >> /home/cosmo/Desktop/projects/antialexa-v2/antialexa-debug.log 2>&1
echo $? > /home/cosmo/Desktop/projects/antialexa-v2/exit_code.log
