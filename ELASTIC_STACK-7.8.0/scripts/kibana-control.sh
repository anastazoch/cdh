#!/bin/bash
CMD=$1

case $CMD in
  (start)
    exec $KIBANA_HOME/bin/kibana -c $KIBANA_HOME/config/kibana.yml
    ;;
  (stop)
    ps -ef | grep -v grep | grep kibana | awk -F ' ' '{print $2}' | xargs kill -9 &> /dev/null
  (*)
    echo "Don't understand [$CMD]"
    ;;
esac
