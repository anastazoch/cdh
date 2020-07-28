#!/bin/bash
CMD=$1

export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))

case $CMD in
  (start)
    exec $ES_HOME/bin/elasticsearch -d -p $ES_HOME/pid
    ;;
  (stop)
    pkill -F $ES_HOME/pid
  (*)
    echo "Don't understand [$CMD]"
    ;;
esac
