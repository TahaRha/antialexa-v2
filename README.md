# AntiAlexa v2

## Overview

AntiAlexa v2 is a script designed to automatically mute your Alexa device when a Bluetooth device connects to your system, and then unmute it after a specified period. This is particularly useful to prevent Alexa from making unwanted announcements.

## Features

- Automatically mutes Alexa on Bluetooth connection.
- Restores volume after a specified duration.
- Logs all actions for troubleshooting and verification.

## Requirements

- Linux (as the script uses udev rules, daemon in systemd)
- Bluetooth-enabled device
- `curl` and `jq` installed

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/antialexa-v2.git
    ```
2. Navigate to the project directory:
    ```bash
    cd antialexa-v2
    ```
3. Make the script executable:
    ```bash
    chmod +x antialexa.sh alexa_remote_control.sh
    ```

## Configuration

1. Open `alexa_remote_control.sh` and configure the following variables:
    ```bash
    SET_REFRESH_TOKEN='Your_Refresh_Token_Here'
    SET_TTS_LOCALE='en-CA'
    SET_AMAZON='amazon.com'
    SET_ALEXA='alexa.amazon.com'
    SET_TMP="$HOME/tmp"
    ```

2. Create the temporary directory:
    ```bash
    mkdir -p $HOME/tmp
    ```

## Setting Up Udev Rules

1. Create a new udev rule file:
    ```bash
    sudo nano /etc/udev/rules.d/99-bluetooth-alexa.rules
    ```
2. Add the following rule to the file:
    ```bash
    ACTION=="add", SUBSYSTEM=="bluetooth", ATTRS{address}=="00:F3:61:51:96:45", RUN+="/home/c

3. Reload udev rules:
    ```bash
    sudo udevadm control --reload-rules
    ```

## Usage

To test the script manually, run:
```bash
./antialexa.sh
