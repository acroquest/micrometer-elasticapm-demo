set ES_HOST=localhost
set ES_PORT=9200
set KIBANA_HOST=localhost
set KIBANA_PORT=5601

curl -X POST "http://%ES_HOST%:%ES_PORT%/_template/apm-7.4.0" -H "Content-Type: application/json" -d @index-template.json
curl -X POST "http://%KIBANA_HOST%:%KIBANA_PORT%/api/saved_objects/_import" -H "kbn-xsrf: true" --form file=@elasticapm-index.ndjson
curl -X POST "http://%KIBANA_HOST%:%KIBANA_PORT%/api/saved_objects/_import" -H "kbn-xsrf: true" --form file=@elasticapm-visualize.ndjson
curl -X POST "http://%KIBANA_HOST%:%KIBANA_PORT%/api/saved_objects/_import" -H "kbn-xsrf: true" --form file=@elasticapm-dashboard.ndjson

curl -X POST "http://%KIBANA_HOST%:%KIBANA_PORT%/api/saved_objects/_import" -H "kbn-xsrf: true" --form file=@micrometer-index.ndjson
curl -X POST "http://%KIBANA_HOST%:%KIBANA_PORT%/api/saved_objects/_import" -H "kbn-xsrf: true" --form file=@micrometer-visualize.ndjson
curl -X POST "http://%KIBANA_HOST%:%KIBANA_PORT%/api/saved_objects/_import" -H "kbn-xsrf: true" --form file=@micrometer-dashboard.ndjson
