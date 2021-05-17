<?php
global $db;
$db["server"] = "us-cdbr-east-03.cleardb.com";
$db["user"] = "baefa20d632630";
$db["password"] = "f7cae5a7";
$db["dbname"] = "heroku_e18fa8eec266c02";
// Create connection
$conn = new mysqli($db["server"], $db["user"], $db["password"], $db["dbname"]);
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
// echo "Connected successfully<br/>";
