#!/bin/bash
ls -la "$1" | awk '{print $3}' | sort | uniq -c | sort -rn | head -n 1
