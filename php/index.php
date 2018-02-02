<?php

echo 'datetime - ' . date("Y-m-d H:i:s");
echo '<br/>';

$db = new PDO('mysql:host=awstests_db_1;dbname=awstests;charset=utf8mb4', 'root', 'root');

foreach ($db->query('select id, username from users') as $row) {
    echo $row['id'] . ' - ' . $row['username'];
    echo '<br/>';
}

?>