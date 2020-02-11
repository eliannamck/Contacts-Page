<?php
header('Content-Type: application/json');

$db_servername = "localhost:3306";
$db_username = "root";
$db_password = "admin";
$db_name = "contacts";

$db_conn = new mysqli($db_servername, $db_username, $db_password, $db_name);
if ($db_conn->connect_error) {
    die("Connection failed: " . $db_conn->connect_error);
} 

$sql = "SELECT id, first_name, last_name, email, phone, street_num, street_name, city, province, postal_code, added FROM contact";

$db_result = $db_conn->query($sql);

$arr = array();
while($row = $db_result->fetch_assoc()){	$arr[] = $row; }
$db_result->free();

echo '{"data":'.json_encode($arr) . '}';

$db_conn->close();
?>