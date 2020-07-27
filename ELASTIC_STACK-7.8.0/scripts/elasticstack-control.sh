#!/bin/bash
CMD=$1

case $CMD in
  (start)
    exec ./elasticsearch-control.sh start
    exec ./kibana-control.sh start
    exec ./logstash-control.sh start
    exec ./filebeat-control.sh start
    exec ./metricbeat-control.sh start
    exec ./packetbeat-control.sh start
    ;;
  (stop)
    exec ./packetbeat-control.sh stop
    exec ./metricbeat-control.sh stop
    exec ./filebeat-control.sh stop
    exec ./logstash-control.sh stop
    exec ./kibana-control.sh stop
    exec ./elasticsearch-control.sh stop
    ;;
esac
