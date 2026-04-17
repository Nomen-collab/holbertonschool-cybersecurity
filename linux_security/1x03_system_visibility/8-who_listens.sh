#!/bin/bash
ss -tulpn 2>/dev/null | grep ":${1} " | grep LISTEN | awk -F'"' '{print $2}' | head -1
