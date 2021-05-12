<?php
date_default_timezone_set("Asia/Kolkata");
$conn = mysqli_connect("localhost", "root", "", "poll");
if (!$conn) {
    die('Could not connect: ' . mysqli_error());
}
$site = mysqli_real_escape_string($conn, $_REQUEST['site']);
$key = mysqli_real_escape_string($conn, isset($_REQUEST['key']) ? $_REQUEST['key'] : "");
$type = mysqli_real_escape_string($conn, isset($_REQUEST['type']) ? $_REQUEST['type'] : "");
$timestamp = date("U");
$day = date("d");
$mnth = date("m");
$year = date("Y");
$page = mysqli_real_escape_string($conn, isset($_REQUEST['page']) ? $_REQUEST['page'] : "unknown");
$ip = $_SERVER['REMOTE_ADDR'];

if ($key) {
    $sql = "INSERT INTO `$site`( `keyvalue`, `timestamp`, `day`, `mnth`, `year`, `page`, `ip`, `type`) VALUES ('$key','$timestamp','$day','$mnth','$year','$page','$ip','$type')";
    $conn->query($sql);
    $conn->close();
    exit("$key");
} else {
    $sql = "INSERT INTO `$site`( `timestamp`, `day`, `mnth`, `year`, `page`, `ip`, `type`) VALUES ('$timestamp','$day','$mnth','$year','$page','$ip','$type')";
    if ($conn->query($sql) === TRUE) {
        $id = $conn->insert_id;
        $sql = "UPDATE `$site` SET `keyvalue`='$id' WHERE `id` = $id";
        $result = mysqli_query($conn, $sql);
        $conn->close();
        exit("$id");
    } else {
        $conn->close();
        exit();
    }
}
