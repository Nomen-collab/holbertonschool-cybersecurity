#!/bin/bash
ss -lnt4 | awk '{print $4}' | cut -d: -f2 | sort -n
