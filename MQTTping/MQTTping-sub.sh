#!/bin/sh

# MQTTping-sub.sh
# Last update: Wed Apr 27 16:44:35 JST 2022 by @hohno_at_kuimc

HOST=${1-"broker.hivemq.com"}
TOPIC=${2-"$USER/MQTTping1"}
mosquitto_sub -t $TOPIC -h $HOST | linets -Z6 | linets -e6  | awk '{printf "%10.6f %s\n", ($1-$3), $0; fflush()}'
