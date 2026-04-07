#!/bin/bash
ls -la "$1" | awk 'NR>1 {print $3}' | sort | uniq -c | sort -nr | head -1
