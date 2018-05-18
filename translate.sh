#!/bin/bash

curl -XPOST $api_url \
  --data-urlencode "text=$message" > output.json

curl -v  -i -XPOST \
  -o output.json \
  -d "text=$message" http://api.funtranslations.com/translate/ermahgerd.json


cat output.json | jq '.contents.translated'
