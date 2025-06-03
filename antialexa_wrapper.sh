#!/bin/bash
export HOME="${HOME:-/home/cosmo}"
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-/run/user/$(id -u)}"

script_dir="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$HOME/tmp"

"$script_dir/alexa_remote_control.sh" -e vol:0 >> "$script_dir/antialexa-debug.log" 2>&1
echo $? > "$script_dir/exit_code.log"
