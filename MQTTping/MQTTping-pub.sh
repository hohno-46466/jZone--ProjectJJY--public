#!/bin/sh
HOST=${1-"broker.hivemq.com"}
TOPIC=${2-"$USER/MQTTping1"}
while [ 1 ]; do date +%s.%6N; done | valve -l 1s | linets -Z6 | mosquitto_pub -l -t $TOPIC -h $HOST

