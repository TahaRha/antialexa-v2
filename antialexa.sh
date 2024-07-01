#!/bin/bash
# Wrapper script to block alexa from shouting at me like the crazy woman she is

log_file=/home/cosmo/Desktop/projects/antialexa-v2/antialexa.log

#introduce logs
echo "Bluetooth device connected" >> $log_file

# Remove the cookie file if it exists (with sudo if necessary)
sudo rm -f /tmp/.alexa.cookie

#muting alexa to logs
echo "Muting Alexa" >> $log_file
# Mute Alexa
/home/cosmo/Desktop/projects/antialexa-v2/alexa_remote_control.sh -e vol:0

# log of sleeping
echo "Sleeping for 5 seconds" >> $log_file
# Wait for 5 seconds
sleep 5

# Set volume back to 100
/home/cosmo/Desktop/projects/antialexa-v2/alexa_remote_control.sh -e vol:100
# log of unmuting
echo "Unmuting Alexa" >> $log_file

