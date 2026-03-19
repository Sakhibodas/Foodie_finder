<?php include ('server.php')?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>

    <div class="login-container">
        <h2>Login</h2>
        <form action="" method="POST">
            <?php include('errors.php');?>
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit" name="login_user" class="btn">Login</button>

        </form>
        <a href="register.php" class="signup-link">Don't have an account? Sign up</a>
    </div>

</body>
</html>