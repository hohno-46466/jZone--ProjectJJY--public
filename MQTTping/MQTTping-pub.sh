#!/bin/sh

# MQTTping-pub.sh
# Prev update: Wed Apr 27 16:44:01 JST 2022 by @hohno_at_kuimc
# Last update: Fri Apr 29 08:51:01 JST 2022

HOST=${1-"broker.hivemq.com"}
TOPIC=${2-"$USER/MQTTping1"}

# while [ 1 ]; do date +%s.%6N; sleep 0.9; done | valve -l 1s | linets -Z6 | linets -e6 | mosquitto_pub -l -t $TOPIC -h $HOST
(seq 0 1 99; x=100; while [ 1 ]; do echo $x; x=$(($x + 1)); sleep 1; done ) | valve -l 1s | linets -Z6 | linets -e6 | mosquitto_pub -l -t $TOPIC -h $HOST
