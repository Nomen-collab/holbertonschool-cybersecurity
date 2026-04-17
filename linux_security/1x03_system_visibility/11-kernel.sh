#!/bin/bash
grep -h segfault /var/log/kern.log 2>/dev/null; grep -h segfault /var/log/messages 2>/dev/null
