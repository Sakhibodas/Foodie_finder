<?php
// Replace "your_actual_password" with the actual password
$actual_password = "	
f2285b68e227f7a9d4481a80a3b1b186";
$hashed_password = password_hash($actual_password, PASSWORD_DEFAULT);
echo "Hashed Password: " . $hashed_password;
?>
