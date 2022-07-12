<?php
$dsn = 'mysql:host=localhost;dbname=employees';
$user = 'root';
$pass = '';

try {
    $dbh = new PDO($dsn, $user, $pass);

    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch (PDOException $error) {
    echo "DB Error: code: " . $error->getCode() . ' | message: ' . $error->getMessage() . PHP_EOL;
    exit;
}
