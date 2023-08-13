
//$db_host		= 'localhost';
//$db_user		= 'root';
//$db_pass		= '';
//$db_database	= 'my_chat'; 

/* End config */

//db = new PDO('mysql:host='.$db_host.';dbname='.$db_database, $db_user, $db_pass);
// $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

//

<?php
$conn = pg_connect("host=10.152.183.210 port=5432 dbname=postgresdb user=admin password=psltest");
if (!$conn) {
    echo "Connection failed.";
    exit;
}
?>


