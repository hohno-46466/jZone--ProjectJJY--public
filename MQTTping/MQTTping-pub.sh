#!/bin/sh

# MQTTping-pub.sh
# Last update: Wed Apr 27 16:44:01 JST 2022 by @hohno_at_kuimc

HOST=${1-"broker.hivemq.com"}
TOPIC=${2-"$USER/MQTTping1"}
while [ 1 ]; do date +%s.%6N; sleep 0.9; done | valve -l 1s | linets -Z6 | linets -e6 | mosquitto_pub -l -t $TOPIC -h $HOST

