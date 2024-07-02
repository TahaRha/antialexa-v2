#!/bin/bash

log_file=$HOME/Desktop/projects/antialexa-v2/antialexa.log
env_log_file=$HOME/Desktop/projects/antialexa-v2/antialexa-env.log
debug_log_file=$HOME/Desktop/projects/antialexa-v2/antialexa-debug.log

# Introduce logs
echo "Bluetooth device connected" >> $log_file
env >> $env_log_file

# Muting Alexa
echo "Muting Alexa" >> $log_file
/home/cosmo/Desktop/projects/antialexa-v2/alexa_remote_control.sh -e vol:0 >> $debug_log_file 2>&1

# Log of sleeping
echo "Sleeping for 5 seconds" >> $log_file
sleep 5

# Set volume back to 100
/home/cosmo/Desktop/projects/antialexa-v2/alexa_remote_control.sh -e vol:100 >> $debug_log_file 2>&1
echo "Unmuting Alexa" >> $log_file
