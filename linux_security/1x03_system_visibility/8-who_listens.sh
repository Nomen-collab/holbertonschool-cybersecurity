#!/bin/bash
ss -tulpn 2>/dev/null | grep ":${1}\ " | grep -E "LISTEN|LISTENING" | awk '{print $7}' | cut -d'"' -f2 | cut -d',' -f1 | head -1
