#!/bin/bash
[ ! -f "sentinel.conf" ] && echo "Error: sentinel.conf not found" && exit 1 || source sentinel.conf && [ -z "${SERVICES+x}" ] && echo "Error: SERVICES not defined" && exit 1 || [ -z "${FILES_TO_WATCH+x}" ] && echo "Error: FILES_TO_WATCH not defined" && exit 1
