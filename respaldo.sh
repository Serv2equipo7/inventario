#!/bin/bash
set -e
cd "$(dirname "$0")"
source .env
FECHA=$(date +%Y%m%d_%H%M%S)
ARCHIVO="Equipo07_Respaldo.sql"
docker exec inventario-db-1 mysqldump -u root -p"$MYSQL_ROOT_PASSWORD" "$MYSQL_DATABASE" > "$ARCHIVO"
echo "Respaldo generado exitosamente en $ARCHIVO ($FECHA)"
