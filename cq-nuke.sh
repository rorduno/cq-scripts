#!/bin/sh
VAR=$(lsof -n -i4TCP:4502 | grep LISTEN | awk '{print $2}')
 
if  [ !  -z  $VAR  ]; then
	echo killing cq process  "$VAR"   
	kill -9 "$VAR"
else
	echo cq not available
fi
