#!/bin/bash
#Default ENV vars for Amazon AMI
#LOGS

echo -e "/var/log/restcomm" > /etc/container_environment/RESTCOMM_LOGS

echo -e "restcomm_core" > /etc/container_environment/CORE_LOGS_LOCATION
echo -e "restcomm_trace" > /etc/container_environment/RESTCOMM_TRACE_LOG
echo -e "media_server" > /etc/container_environment/MEDIASERVER_LOGS_LOCATION

#SSL certificate
echo -e "AUTH" > /etc/container_environment/SECURESSL
echo -e "allowall" > /etc/container_environment/SSL_MODE
echo -e "214015712980257" > /etc/container_environment/TRUSTSTORE_PASSWORD
#echo -e "tomcat" > /etc/container_environment/TRUSTSTORE_ALIAS
echo -e "iwenda.me.jks" /etc/container_environment/TRUSTSTORE_FILE


#Functional configuration.
echo -e "TRUE" > /etc/container_environment/USE_STANDARD_HTTP_PORTS
echo -e "TRUE" > /etc/container_environment/USE_STANDARD_SIP_PORTS
echo -e "65000" > /etc/container_environment/MEDIASERVER_LOWEST_PORT
echo -e "65050" > /etc/container_environment/MEDIASERVER_HIGHEST_PORT

#Log
echo -e "DEBUG" > /etc/container_environment/LOG_LEVEL

#SMS
echo -e "''" > /etc/container_environment/SMS_PREFIX

#TTS - this is a free acount KEY - please create your personal key (http://www.voicerss.org/)
echo -e "92d8c8c51bd047c884ae827cb6eb5bf5" > /etc/container_environment/VOICERSS_KEY

#RVD_LOCATION
echo -e "/var/restcomm/rvd/workspace" > /etc/container_environment/RVD_LOCATION

#HSQL-persist data - Need to mount this path on the host. else data is not persistent.
echo -e "/var/restcomm/data" > /etc/container_environment/HSQL_PERSIST


#Backwords compatibility will be removed in next release..
echo -e "TRUE" > /etc/container_environment/USE_STANDARD_PORTS