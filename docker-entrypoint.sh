#!/bin/bash 

[ $DEBUG ] && set -x

cd /opt/redis-browser

sleep ${PAUSE:0}

./bin/redis-browser -B $POD_NET_IP -U redis://${REDIS_HOST}:${REDIS_PORT}/0
