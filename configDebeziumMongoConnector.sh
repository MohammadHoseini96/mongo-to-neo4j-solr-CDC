curl -X POST http://localhost:8083/connectors \
  -H 'Content-Type:application/json' \
  -H 'Accept:application/json' \
  -d @kakfaConnectConfigs/debeziumMongoConfig.json