#!/bin/bash

script_dir="$(cd "$(dirname "$0")" && pwd)"
log_file="$script_dir/antialexa.log"
env_log_file="$script_dir/antialexa-env.log"
debug_log_file="$script_dir/antialexa-debug.log"
alexa_ctl="$script_dir/alexa_remote_control.sh"

# Introduce logs
echo "Bluetooth device connected" >> "$log_file"
env >> "$env_log_file"

# Muting Alexa
echo "Muting Alexa" >> "$log_file"
"$alexa_ctl" -e vol:0 >> "$debug_log_file" 2>&1

# Log of sleeping
echo "Sleeping for 5 seconds" >> "$log_file"
sleep 5

# Set volume back to 100
"$alexa_ctl" -e vol:100 >> "$debug_log_file" 2>&1
echo "Unmuting Alexa" >> "$log_file"
