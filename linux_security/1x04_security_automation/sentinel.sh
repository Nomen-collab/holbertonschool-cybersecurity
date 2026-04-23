#!/bin/bash
CONFIG_FILE="${1:-sentinel.conf}"; [ ! -f "$CONFIG_FILE" ] && echo "Error" && exit 1; source "$CONFIG_FILE"; ok=1; for file in "${FILES_TO_WATCH[@]}"; do gold="/var/backups/sentinel/$(basename "$file").gold"; if [ ! -f "$gold" ] || ! cmp -s "$file" "$gold" 2>/dev/null; then ok=0; break; fi; done; [ $ok -eq 1 ] && echo "ok" || echo "fixed"
