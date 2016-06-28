#!/bin/bash 

[ $DEBUG ] && set -x

cd /opt/redis-browser

sleep ${PAUSE:-0}

./bin/redis-browser -B 0.0.0.0 -U redis://${REDIS_HOST}:${REDIS_PORT}/0
