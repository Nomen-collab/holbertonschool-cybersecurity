#!/bin/bash
find "$1" -type f -mmin -60 -size +1M ! -name "*.gz" 2>/dev/null
