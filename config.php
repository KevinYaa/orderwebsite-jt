<?php
global $db;
$db["server"] = "localhost";
$db["user"] = "root";
$db["password"] = "";
$db["dbname"] = "order";
// Create connection
$conn = new mysqli($db["server"], $db["user"], $db["password"], $db["dbname"]);
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
// echo "Connected successfully<br/>";
