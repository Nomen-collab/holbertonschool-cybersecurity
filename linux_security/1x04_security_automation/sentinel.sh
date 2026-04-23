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

# Function to monitor and heal services
check_services() {
    for svc in "${SERVICES[@]}"; do
        if pgrep -f "$svc" > /dev/null 2>&1; then
            echo "OK: $svc is running"
        else
            echo "FIXED: Restarted $svc"
            eval "$svc" 2>/dev/null || echo "ERROR: Failed to start $svc"
        fi
    done
}

# Call the function
check_services

exit 0
