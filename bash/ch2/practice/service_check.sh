#!/bin/bash
##Security service checker
echo  "Enter service/Process name" | tee service_report.txt
read service
echo "service/process entered: $service" | tee -a service_report.txt
echo "Current Linux username: $(whoami)" | tee -a service_report.txt
echo "Current date time: $(date)" | tee -a service_report.txt
if ps | grep  "$service"
then
	echo "Service is running" | tee -a service_report.txt
else
	echo "Service is not running" | tee -a service_report.txt
fi
