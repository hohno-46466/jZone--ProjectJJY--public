#!/bin/sh
HOST=${1-"broker.hivemq.com"}
TOPIC=${2-"$USER/MQTTping1"}
mosquitto_sub -t $TOPIC -h $HOST | linets -Z6
