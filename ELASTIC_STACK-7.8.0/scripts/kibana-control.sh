#!/bin/bash
CMD=$1

case $CMD in
  (start)
    exec $KIBANA_HOME/bin/kibana
    ;;
  (stop)
    kill -9 $(ps -ef | grep bin/kibana | awk -F ' ' '{print $2}')
  (*)
    echo "Don't understand [$CMD]"
    ;;
esac
