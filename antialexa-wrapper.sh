#!/bin/bash
# Ensure required environment variables are set
export HOME="${HOME:-/home/cosmo}"
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-/run/user/$(id -u)}"

script_dir="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$HOME/tmp"
"$script_dir/antialexa.sh"
