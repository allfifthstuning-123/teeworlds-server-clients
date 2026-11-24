#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"

CONFIG="$DIR/config.cfg"

if [ ! -f "$CONFIG" ]; then
    echo "config.cfg bestaat niet, wordt aangemaakt!"
    touch "$CONFIG"
    exit 1
fi

cd "$DIR" || exit 1

echo "Starting Teeworlds server..."
echo "Using config.cfg"

sudo /usr/games/teeworlds-server -f config.cfg
