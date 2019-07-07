#!/bin/sh

# A simple script that will receive events from a RTL433 SDR tuned to listen to 345.00 MHz and publish to MQTT
# 
# Author: Steven McNinch <divvichild@gmail.com>

set -x

export LANG=C
PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"

# Start the listener and enter an endless loop
echo "Starting RTL..."
echo "MQTT_HOST:"$MQTT_HOST
echo "MQTT_USER:"$MQTT_USER
echo "MQTT_PASS:"$MQTT_PASS
echo "MQTT_TOPIC:"$MQTT_TOPIC
/usr/local/bin/rtl_433 -f 345000000 -F json | mosquitto_pub -h $MQTT_HOST -t $MQTT_TOPIC -u $MQTT_USER -P $MQTT_PASS -l
#/usr/local/bin/rtl_433 -f 345000000 -F json | mosquitto_pub -h 192.168.0.88 -t 433/sensor -u mqtt -P test -l