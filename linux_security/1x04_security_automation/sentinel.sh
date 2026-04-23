#!/bin/bash
CONFIG_FILE="${1:-sentinel.conf}"
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Error: Configuration file $CONFIG_FILE not found"
    exit 1
fi
source "$CONFIG_FILE"
if [ ${#SERVICES[@]} -eq 0 ] || [ ${#FILES_TO_WATCH[@]} -eq 0 ]; then
    echo "Error: SERVICES and FILES_TO_WATCH must be defined"
    exit 1
fi
echo "Configuration loaded successfully"
exit 0
