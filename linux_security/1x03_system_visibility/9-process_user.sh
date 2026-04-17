#!/bin/bash
ps -o user= -p $1 2>/dev/null | head -1
