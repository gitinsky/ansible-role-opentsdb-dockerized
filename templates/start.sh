#!/bin/sh
set -e
PATH=$PATH:$JAVA_HOME/bin
export PATH
cp /etc/opentsdb/hosts /etc/hosts
exec /opentsdb/build/tsdb tsd 1>>/var/log/opentsdb/tsdb.log 2>&1
