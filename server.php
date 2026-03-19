<?php
session_start();

// initializing variables
$username = "";
$email    = "";
$errors = array(); 

// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'foodie_finder');

if (!$db) {
    die("Database connection failed: " . mysqli_connect_error());
}

// REGISTER USER
if (isset($_POST["reg_user"])) {
    $username = mysqli_real_escape_string($db, $_POST['username']);
    $email = mysqli_real_escape_string($db, $_POST['email']);
    $password_1 = mysqli_real_escape_string($db, $_POST['password']);
    $password_2 = mysqli_real_escape_string($db, $_POST['confirm_password']);
  
    // Form validation
    if (empty($username)) { array_push($errors, "Username is required"); }
    if (empty($email)) { array_push($errors, "Email is required"); }
    if (empty($password_1)) { array_push($errors, "Password is required"); }
    if ($password_1 != $password_2) {
      array_push($errors, "The two passwords do not match");
    }
  
    // Check if user already exists
    $query = "SELECT * FROM users WHERE username='$username' OR email='$email' LIMIT 1";
    $results = mysqli_query($db, $query);
  
    if ($results && mysqli_num_rows($results) > 0) {
      $user = mysqli_fetch_assoc($results);
      if ($user['username'] === $username) {
        array_push($errors, "Username already exists");
      }
      if ($user['email'] === $email) {
        array_push($errors, "Email already exists");
      }
    }
  
    // Register user if no errors
    if (count($errors) == 0) {
      $password = password_hash($password_1, PASSWORD_DEFAULT); // Hash password
  
      $query = "INSERT INTO users (username, email, password) VALUES('$username', '$email', '$password')";
      if (mysqli_query($db, $query)) {
        $_SESSION['username'] = $username;
        $_SESSION['success'] = "You are now logged in";
        header('location: index.php');
      } else {
        array_push($errors, "Database Error: " . mysqli_error($db));
      }
    }
}
//login user
if (isset($_POST["login_user"])) {
    $username = mysqli_real_escape_string($db, $_POST['username']);
    $password = mysqli_real_escape_string($db, $_POST['password']);
    
    if (empty($username)) {
      array_push($errors, "Username is required");
    }
    if (empty($password)) {
      array_push($errors, "Password is required");
    }
  
    if (count($errors) == 0) {
      $query = "SELECT * FROM users WHERE username='$username'";
      $results = mysqli_query($db, $query);
  
      if (mysqli_num_rows($results) == 1) {
        $user = mysqli_fetch_assoc($results);
  
        // Debugging - Print the password from DB
        // echo "Entered Password: $password<br>";
        // echo "Stored Password (Hashed): " . $user['password'] . "<br>";
  
        // Verify the password using password_verify
        if (password_verify($password, $user['password'])) {
          $_SESSION['username'] = $user['username'];
          $_SESSION['user_id'] = $user['user_id']; 
          $_SESSION['success'] = "You are now logged in";
          header('location: index.php');
          exit();
        } else {
          array_push($errors, "Wrong username/password combination");
        }
      } else {
        array_push($errors, "User not found");
      }
    }
  }
  

?>
