#!/bin/bash

if [ $# -eq 0 ]
then
  echo "Usage: $0 <SERVICE_NAME>"
  exit 1
fi

SERVICE=$1

case "$(pidof ${SERVICE} | wc -w)" in

  0) curl -d chat_id=${CHAT_ID} -d text="ALERT: ${SERVICE} has stopped running on $(hostname)" https://api.telegram.org/bot${API_KEY}/sendMessage
     ;;
  1) 
    ;;
esac
