<?php
// Database connection
$db = mysqli_connect('localhost', 'root', '', 'foodie_finder');

// Check connection
if (!$db) {
    die("Database connection failed: " . mysqli_connect_error());
} else {
    echo "Database connected successfully!";
}
?>
