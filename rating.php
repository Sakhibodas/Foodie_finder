<?php
ob_start();
session_start();
$db = mysqli_connect('localhost', 'root', '', 'foodie_finder');

if (!$db) {
    die("Database connection failed: " . mysqli_connect_error());
}

if (!isset($_SESSION['user_id'])) {
    echo "Session not set. Debugging Info: ";
    print_r($_SESSION);
    exit();
}


// Check if user is logged in
if (!isset($_SESSION['user_id'])) {
    echo "You must be logged in to submit a rating.";
    exit();
}

$user_id = $_SESSION['user_id'];
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $recipe_id = intval($_POST['recipe_id']);
    $rating = intval($_POST['rating']);

    // Validate rating
    if ($rating < 1 || $rating > 5) {
        echo "Invalid rating. Please submit a rating between 1 and 5.";
        exit();
    }

    // Check for duplicate ratings
    $checkQuery = "SELECT * FROM ratings WHERE recipe_id = '$recipe_id' AND user_id = '$user_id'";
    $checkResult = mysqli_query($db, $checkQuery);

    if (mysqli_num_rows($checkResult) > 0) {
        echo "You have already rated this recipe.";
        exit();
    }

    // Insert Rating
    $query = "INSERT INTO ratings (recipe_id, user_id, rating) VALUES ('$recipe_id', '$user_id', '$rating')";
    if (mysqli_query($db, $query)) {
        // Redirect after successful rating
        header("Location: recipe.php?id=" . $recipe_id . "&message=Rating Submitted");
        exit();
    } else {
        echo "Error: " . mysqli_error($db);
    }
}
ob_end_flush();
?>
