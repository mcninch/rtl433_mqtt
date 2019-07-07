# rtl433_mqtt
Publish rtl_433 data to mqtt broker

Docker Settings:

--priviledged

-e MQTT_HOST=\<mqtt broker url\>

-e MQTT_USER=\<mqtt username\>

-e MQTT_PASS=\<mqtt password\>

-e MQTT_TOPIC=\<mqtt topic to publish to\>
