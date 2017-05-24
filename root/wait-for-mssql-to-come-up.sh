#!/usr/bin/env bash

set -e

# Wait for the SQL Server to come up.
until nc -z -w2 127.0.0.1 1433
do
    echo "[moodle-db-mssql] Waiting 5s for mssql to come up setup"
    sleep 5
done
echo "[moodle-db-mssql] SQL Server UP"
