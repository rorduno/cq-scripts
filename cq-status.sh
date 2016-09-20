#!/bin/sh
lsof -n -i4TCP:4502 | grep LISTEN
