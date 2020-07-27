#!/bin/bash
CMD=$1

case $CMD in
  (start)
    exec kibana -d -p pid
    ;;
  (stop)
    pkill -F pid
  (*)
    echo "Don't understand [$CMD]"
    ;;
esac
