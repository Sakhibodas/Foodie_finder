<?php
session_start();
$db = mysqli_connect('localhost', 'root', '', 'foodie_finder');

// Check connection
if (!$db) {
    die("Database connection failed: " . mysqli_connect_error());
}

// Check session and recipe ID
if (!isset($_SESSION['user_id'])) {
    echo "You must be logged in to save recipes.";
    exit();
}

if (!isset($_POST['recipe_id']) || empty($_POST['recipe_id'])) {
    echo "Error: Recipe ID is missing.";
    exit();
}

$user_id = intval($_SESSION['user_id']);
$recipe_id = intval($_POST['recipe_id']);



// Check if recipe exists
$recipe_id = intval($recipe_id); // Ensure it's an integer

$recipeCheck = mysqli_query($db, "SELECT * FROM recipes WHERE recipe_id='$recipe_id'");

if (!$recipeCheck) {
    echo "Error: " . mysqli_error($db); // Print error if query fails
    exit();
}

if (mysqli_num_rows($recipeCheck) == 0) {
    echo "Error: Recipe not found.";
    exit();
}


// Check if already saved
$checkQuery = "SELECT * FROM saved_recipes WHERE user_id='$user_id' AND recipe_id='$recipe_id'";
$checkResult = mysqli_query($db, $checkQuery);

if (mysqli_num_rows($checkResult) == 0) {
    $query = "INSERT INTO saved_recipes (user_id, recipe_id) VALUES ('$user_id', '$recipe_id')";
    if (mysqli_query($db, $query)) {
        echo "Recipe saved successfully!";
    } else {
        echo "Error: " . mysqli_error($db);
    }
} else {
    echo "This recipe is already saved!";
}
?>
