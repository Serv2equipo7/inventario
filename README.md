# Sistema de Inventario – Búho Papelería (Equipo 07)

Sistema web contenerizado para el control de inventario de **Búho Papelería**, implementado con Nginx (proxy inverso), Flask/Gunicorn (aplicación web) y MySQL 8.4 (base de datos relacional).

## Requisitos previos
- Docker y Docker Compose
- Git

## Guía para recrear el sistema
1. Clonar el repositorio:
git clone https://github.com/Serv2equipo7/inventario.git
   cd inventario

2. Crear el archivo de variables de entorno a partir de la plantilla y configurar las contraseñas:
   cp .env.example .env

3. Levantar los servicios con Docker Compose:
   docker compose up -d

4. (Opcional) Restaurar el respaldo de la base de datos:
   source .env
   docker exec -i inventario-db-1 mysql -u root -p"$MYSQL_ROOT_PASSWORD" "$MYSQL_DATABASE" < Equipo07_Respaldo.sql

5. Abrir en el navegador http://<IP_DEL_SERVIDOR> para verificar el sistema.
