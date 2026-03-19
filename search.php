<?php
session_start();
$db = mysqli_connect('localhost', 'root', '', 'foodie_finder');

// Check if the database connection failed
if (!$db) {
    die("Database connection failed: " . mysqli_connect_error());
}

// Initialize an empty search query to avoid undefined variable warnings
$search_query = "";
$result = null;

// Check if a search query was submitted
if (isset($_GET['query']) && !empty($_GET['query'])) {
    $search_query = mysqli_real_escape_string($db, $_GET['query']);

    // Search query to find recipes by title or description
    $sql = "SELECT * FROM recipes WHERE title LIKE '%$search_query%' OR description LIKE '%$search_query%'";
    $result = mysqli_query($db, $sql);

    if (!$result) {
        die("Query Failed: " . mysqli_error($db));
    }
} else {
    echo "<p>Please enter a search term.</p>";
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results</title>
    <link rel="stylesheet" href="search.css">
</head>
<body>
<header>
    <div class="container">
        <h1 class="logo">Authentic Recipes</h1>
        <nav>
            <ul class="nav-list">
            <li><a href="index.php">Home</a></li>
                <li><a href="saved_recipes.php">Saved Recipes</a></li>
                <li><a href="profile.php">Profile</a></li>
                <li><a href="logout.php">Logout</a></li>
            </ul>
        </nav>
    </div>  
</header> 

<h2>Search Results for "<?php echo htmlspecialchars($search_query); ?>"</h2>

<?php if ($result && mysqli_num_rows($result) > 0): ?>
    <div class="recipe-section">
        <?php while ($row = mysqli_fetch_assoc($result)): ?>
            <div class="recipe-card">
                <img src="<?php echo htmlspecialchars($row['image_url']); ?>" alt="<?php echo htmlspecialchars($row['title']); ?>">
                <h2><?php echo htmlspecialchars($row['title']); ?></h2>
                <p><?php echo htmlspecialchars($row['description']); ?></p>
                <a href="recipe.php?id=<?php echo htmlspecialchars($row['recipe_id']); ?>"><button>View Recipe</button></a>
            </div>
        <?php endwhile; ?>
    </div>
<?php else: ?>
    <p>No recipes found. Try searching for something else!</p>
<?php endif; ?>

</body>
</html>
