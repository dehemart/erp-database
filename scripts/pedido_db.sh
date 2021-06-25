#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER pedido;
    CREATE DATABASE pedido;
    GRANT ALL PRIVILEGES ON DATABASE pedido TO pedido;
EOSQL