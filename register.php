<?php include ('server.php')?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Page</title>
    <link rel="stylesheet" href="signup.css">
</head>
<body>

    <div class="register-container">
   
        <h2>Register</h2>
        <form action="register.php" method="POST">

        <?php include('errors.php');?> 
            <input type="text" name="username" placeholder="Username" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="password" name="confirm_password" placeholder="Confirm Password" required>
            
            <button type="submit"  name="reg_user" class="btn">Register</button>
            
        </form>
        <a href="/foodie_finder/login.php" class="signin-link">Already have an account? Sign in</a>
    </div>

</body>
</html>