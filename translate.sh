api_url=http://api.funtranslations.com/translate/ermahgerd.json

curl -XPOST $api_url \
  --data-urlencode "text=$message" > output.json

cat output.json | jq '.contents.translated'
