#!/bin/bash

api_url=http://api.funtranslations.com/translate/ermahgerd.json

curl -XPOST $api_url \
  -o output.json \
  -d "text=$message"

cat output.json | jq '.contents.translated'
