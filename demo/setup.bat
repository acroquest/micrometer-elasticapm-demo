set KIBANA_HOST=localhost
set KIBANA_PORT=5601

curl -X POST "http://%KIBANA_HOST%:%KIBANA_PORT%/api/saved_objects/_import" -H "kbn-xsrf: true" --form file=@micrometer-index.ndjson
curl -X POST "http://%KIBANA_HOST%:%KIBANA_PORT%/api/saved_objects/_import" -H "kbn-xsrf: true" --form file=@micrometer-visualize.ndjson
curl -X POST "http://%KIBANA_HOST%:%KIBANA_PORT%/api/saved_objects/_import" -H "kbn-xsrf: true" --form file=@micrometer-dashboard.ndjson
