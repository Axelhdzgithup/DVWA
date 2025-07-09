#!/bin/bash
# Configuración básica para DVWA
cp config/config.inc.php.dist config/config.inc.php
sed -i "s/'db_user' => 'dvwa'/'db_user' => '${DB_USER}'/g" config/config.inc.php
sed -i "s/'db_password' => 'p@ssw0rd'/'db_password' => '${DB_PASSWORD}'/g" config/config.inc.php
sed -i "s/'db_name' => 'dvwa'/'db_name' => '${DB_NAME}'/g" config/config.inc.php
sed -i "s/'db_host' => '127.0.0.1'/'db_host' => '${DB_HOST}'/g" config/config.inc.php

# Permisos necesarios
chmod -R 777 hackable/uploads/
chmod -R 777 external/phpids/0.6/lib/IDS/tmp/phpids_log.txt

echo "✅ DVWA configurado correctamente para Render"