#!/bin/bash
chown root:$2 $1 && chmod 2750 $1 && printf '/var/log/app/*.log {\n    create 0640 root '$2'\n}\n' > /etc/logrotate.d/app
