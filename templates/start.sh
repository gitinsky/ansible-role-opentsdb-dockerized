#!/bin/sh
set -e
PATH=$PATH:$JAVA_HOME/bin
export PATH
exec /opentsdb/build/tsdb tsd 1>>/var/log/opentsdb/tsdb.log 2>&1
