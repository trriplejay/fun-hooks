#!/bin/bash


api_url=http://api.funtranslations.com/translate/$JOB_TRIGGERED_BY_NAME.json

curl -XPOST $api_url \
  -o output.json \
  -d "text=$message"

cat output.json | jq -r '.contents.translated'
