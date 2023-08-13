<?php
/*
Author: Muhammad Abba Gana
Website: www.guidetricks.blogspot.com
*/
?>
<?php
$conn = pg_connect("host=10.152.183.210 port=5432 dbname=postgresdb user=admin password=psltest");
if (!$conn) {
    echo "Connection failed.";
    exit;
}
?>
