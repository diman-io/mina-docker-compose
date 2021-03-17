#!/bin/bash
set -e

createdb mina
#psql -d mina -f <(curl -Ls https://raw.githubusercontent.com/MinaProtocol/mina/master/src/app/archive/create_schema.sql)
psql -d mina -f <(cat /docker-entrypoint-initdb.d/mina_schema_sql)
