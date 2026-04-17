#!/bin/bash
awk -v date="$(date --date='30 minutes ago' '+%b %d %H:%M:%S')" '$0 > date && /sshd/ {print}' /var/log/auth.log 2>/dev/null
