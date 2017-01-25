#!/bin/bash
EXPECTED=$(cat resources/modules/com/oracle/main/ojdbc7.jar.sha1sum)
ACTUAL=$(sha1sum resources/modules/com/oracle/main/ojdbc7.jar | awk '{print$1}')

if [ "$EXPECTED" != "$ACTUAL" ]; then
	exit 1
fi
