#!/bin/sh
# path to instance	
PATH='/Users/35437/Projects/ggp/aem-6_2/crx-quickstart/bin'

echo
cd $PATH
echo
sh ./start
echo start process $(lsof -n -i4TCP:4502 | grep LISTEN | awk '{print $2}')
