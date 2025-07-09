#!/bin/bash
cp config/config.inc.php.dist config/config.inc.php
chmod -R 777 hackable/uploads/
echo "DVWA ready for Render!"