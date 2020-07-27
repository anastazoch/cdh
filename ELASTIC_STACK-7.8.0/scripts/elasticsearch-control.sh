#!/bin/bash
CMD=$1

case $CMD in
  (start)
    exec elasticsearch -d -p pid
    ;;
  (stop)
    pkill -F pid
  (*)
    echo "Don't understand [$CMD]"
    ;;
esac
