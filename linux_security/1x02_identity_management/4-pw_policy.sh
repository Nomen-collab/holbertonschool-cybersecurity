#!/bin/bash
apt-get install -y $1 && sed -i '/pam_unix.so/i password requisite pam_pwquality.so retry=3 minlen=12 minclass=3' "$2"
