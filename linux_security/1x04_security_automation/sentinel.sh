#!/bin/bash
CONFIG_FILE="${1:-sentinel.conf}"; [ ! -f "$CONFIG_FILE" ] && echo "Error: Config file missing" && exit 1; source "$CONFIG_FILE"; for svc in "${SERVICES[@]}"; do pgrep -f "$svc" >/dev/null 2>&1 && echo "OK: $svc is running" || (echo "FIXED: Restarted $svc"; eval "$svc" 2>/dev/null || echo "ERROR: Failed to start $svc"); done
