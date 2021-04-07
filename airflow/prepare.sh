#!/usr/bin/env bash

# Apache Airflow
mkdir /opt/airflow
mkdir /opt/airflow/dags
mkdir /opt/airflow/logs
mkdir /opt/airflow/plugins

echo -e "AIRFLOW_UID=$(id -u)\nAIRFLOW_GID=0" > .env

docker-compose -f docker-compose.yml up airflow-init
