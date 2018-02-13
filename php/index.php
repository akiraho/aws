<?php

echo 'datetime - ' . date("Y-m-d H:i:s");
echo '<br/>';

$ini = parse_ini_file("config.ini");
// echo 'db_host - ' . $ini['db_host'];
// echo '<br/>';

$db = new PDO('mysql:host=' . $ini['db_host'] . ';dbname=awstests;charset=utf8mb4', 'root', 'password');

foreach ($db->query('select id, username from users') as $row) {
    echo $row['id'] . ' - ' . $row['username'];
    echo '<br/>';
}

?>