#!/bin/bash

SERVICENAME="$TRAVIS"

systemctl is-active --quiet $TRAVIS
STATUS=$? # Return value is 0 if running

if [[ "$STATUS" -ne "0" ]]; then
        echo "Service '$TRAVIS' is not curently running... Starting now..."
        service $TRAVIS start
fi
