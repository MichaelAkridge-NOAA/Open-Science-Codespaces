#!/bin/bash
mkdir -p ords_secrets ords_config
chmod 777 ords_config
echo "CONN_STRING=${CONN_STRING}" > ords_secrets/conn_string.txt