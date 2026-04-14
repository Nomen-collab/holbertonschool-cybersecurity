#!/bin/bash
while IFS=: read -r user _ uid _; do
    if [ "$uid" -ge 1000 ]; then
        for group in disk docker shadow; do
            if id -nG "$user" 2>/dev/null | grep -qw "$group"; then
                echo "$user:$group"
            fi
        done
    fi
done < "$1"
