#!/bin/bash
CONFIG_FILE="${1:-sentinel.conf}"; [ ! -f "$CONFIG_FILE" ] && echo "Error" && exit 1; source "$CONFIG_FILE"; result="ok"; for svc in "${SERVICES[@]}"; do pgrep -f "$svc" >/dev/null 2>&1 || result="fixed"; done; echo "$result"
