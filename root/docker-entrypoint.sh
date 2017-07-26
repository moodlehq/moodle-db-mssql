#!/usr/bin/env bash

/setup-db-for-moodle.sh &

exec /opt/mssql/bin/sqlservr

