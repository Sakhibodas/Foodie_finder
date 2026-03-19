<?php
session_start();
$db = mysqli_connect('localhost', 'root', '', 'foodie_finder');

if (!isset($_SESSION['user_id'])) {
    header('location: login.php');
    exit();
}

$username = $_SESSION['username'];

// Fetch user details
$userQuery = "SELECT user_id, username, email FROM users WHERE username='$username'";
$userResult = mysqli_query($db, $userQuery);
$user = mysqli_fetch_assoc($userResult);

// Fetch saved recipes
$savedRecipesQuery = "
    SELECT recipes.recipe_id, recipes.title, recipes.image_url 
    FROM saved_recipes 
    JOIN recipes ON saved_recipes.recipe_id = recipes.recipe_id 
    WHERE saved_recipes.user_id = '{$user['user_id']}'";
$savedRecipesResult = mysqli_query($db, $savedRecipesQuery);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Profile - Foodie Finder</title>
    <link rel="stylesheet" href="profile.css">
</head>
<body>
    <header>
        <h1>Welcome, <?php echo htmlspecialchars($user['username']); ?></h1>
        <a href="index.php">Home</a>
        <a href="profile.php?logout=1">Logout</a>
    </header>
    
    <?php
    if (isset($_GET['logout'])) {
        session_destroy();
        header('location: login.php');
        exit();
    }
    ?>

    <h2>Your Details</h2>
    <p><strong>User ID:</strong> <?php echo $user['user_id']; ?></p>
    <p><strong>Username:</strong> <?php echo htmlspecialchars($user['username']); ?></p>
    <p><strong>Email:</strong> <?php echo htmlspecialchars($user['email']); ?></p>

    <h2>Saved Recipes</h2>
    <?php if (mysqli_num_rows($savedRecipesResult) > 0): ?>
        <div class="recipe-section">
            <?php while ($recipe = mysqli_fetch_assoc($savedRecipesResult)): ?>
                <div class="recipe-card">
                    <img src="<?php echo htmlspecialchars($recipe['image_url']); ?>" alt="<?php echo htmlspecialchars($recipe['title']); ?>">
                    <h3><?php echo htmlspecialchars($recipe['title']); ?></h3>
                    <a href="recipe.php?id=<?php echo urlencode($recipe['recipe_id']); ?>">View Recipe</a>
                </div>
            <?php endwhile; ?>

        
    <?php else: ?>
        <p>You haven't saved any recipes yet.</p>
    <?php endif; ?>
</body>
</html>
