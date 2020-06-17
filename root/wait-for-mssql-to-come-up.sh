#!/usr/bin/env bash

set -e

i=0
until /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "$SA_PASSWORD" -d master -l 1 -Q "SELECT 1" > /dev/null 2>&1
do
    echo "[moodle-db-mssql] Waiting for SQL to accept connections"
    sleep 1

    i=$((i+1))
    if [ $i -gt 60 ]; then
        echo "[moodle-db-mssql] timed out waiting for server to accept connections"
        exit 1;
    fi
done

echo "[moodle-db-mssql] SQL Server UP"
