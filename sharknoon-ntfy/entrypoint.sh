#!/bin/sh
ntfy serve &
sleep 2
# We need to use script to get rid of this error message: password: inappropriate ioctl for device
script -O /dev/null -c "NTFY_PASSWORD=${NTFY_PASSWORD} ntfy user add --role=admin umbrel || true"
wait