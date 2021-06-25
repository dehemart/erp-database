#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER produto;
    CREATE DATABASE produto;
    GRANT ALL PRIVILEGES ON DATABASE produto TO produto;
EOSQL