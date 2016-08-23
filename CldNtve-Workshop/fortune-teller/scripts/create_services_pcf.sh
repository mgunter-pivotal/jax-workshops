#!/usr/bin/env bash

#cf cs elephantsql turtle fortunes-db
cf cs cleardb spark fortunes-db
cf cs p-config-server standard config-server -c '{"git": { "uri": "https://github.com/spring-cloud-samples/fortune-teller", "searchPaths": "configuration" } }'
cf cs p-service-registry standard service-registry
cf cs p-circuit-breaker-dashboard standard circuit-breaker-dashboard
