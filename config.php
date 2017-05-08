<?php
// HTTP
define('HTTP_SERVER', 'http://'.$_SERVER['SERVER_NAME'].':80/');

// HTTPS
define('HTTPS_SERVER', 'https://'.$_SERVER['SERVER_NAME'].':443/');

// DIR
define('DIR_APPLICATION', '/opt/bitnami/apps/opencart/htdocs/catalog/');
define('DIR_SYSTEM', '/opt/bitnami/apps/opencart/htdocs/system/');
define('DIR_IMAGE', '/opt/bitnami/apps/opencart/htdocs/image/');
define('DIR_LANGUAGE', '/opt/bitnami/apps/opencart/htdocs/catalog/language/');
define('DIR_TEMPLATE', '/opt/bitnami/apps/opencart/htdocs/catalog/view/theme/');
define('DIR_CONFIG', '/opt/bitnami/apps/opencart/htdocs/system/config/');
define('DIR_CACHE', '/opt/bitnami/apps/opencart/htdocs/system/storage/cache/');
define('DIR_DOWNLOAD', '/opt/bitnami/apps/opencart/htdocs/system/storage/download/');
define('DIR_LOGS', '/opt/bitnami/apps/opencart/htdocs/system/storage/logs/');
define('DIR_MODIFICATION', '/opt/bitnami/apps/opencart/htdocs/system/storage/modification/');
define('DIR_UPLOAD', '/opt/bitnami/apps/opencart/htdocs/system/storage/upload/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'bn_opencart');
define('DB_PASSWORD', '7d35df2dc8');
define('DB_DATABASE', 'bitnami_opencart');
define('DB_PORT', '3306');
define('DB_PREFIX', 'oc_');


// HEADERS
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");