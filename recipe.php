<?php
session_start();
$db = mysqli_connect('localhost', 'root', '', 'foodie_finder');

if (!$db) {
    die("Database connection failed: " . mysqli_connect_error());
}

// Check if recipe ID is passed
if (isset($_GET['id'])) {
    $recipe_id = mysqli_real_escape_string($db, $_GET['id']);

    // Get Recipe Details
    $query = "SELECT * FROM recipes WHERE recipe_id='$recipe_id'";
    $result = mysqli_query($db, $query);

    if ($result && mysqli_num_rows($result) == 1) {
        $recipe = mysqli_fetch_assoc($result);

        // Get Ingredients
        $ingredients_query = "SELECT * FROM ingredients WHERE recipe_id='$recipe_id'";
        $ingredients_result = mysqli_query($db, $ingredients_query);
 // Fetch Instructions
$instructions_query = "SELECT * FROM instructions WHERE recipe_id='$recipe_id' ORDER BY step_number ASC";
$instructions_result = mysqli_query($db, $instructions_query);

// Error check
if (!$instructions_result) {
    die("Error fetching instructions: " . mysqli_error($db));
}
$nutrition_query = "SELECT calories, protein, carbs, fats FROM nutrition WHERE recipe_id='$recipe_id'";
$nutrition_result = mysqli_query($db, $nutrition_query);

if ($nutrition_result && mysqli_num_rows($nutrition_result) > 0) {
    $nutrition = mysqli_fetch_assoc($nutrition_result);
} else {
    $nutrition = null; // No data found
}

    } else {
        echo "Recipe not found!";
        exit();
    }
} else {
    echo "Invalid Recipe ID!";
    exit();
}
?>
<?php
// Display Average Rating After Form Submission
$ratingQuery = "SELECT AVG(rating) AS avg_rating FROM ratings WHERE recipe_id = $recipe_id";
$ratingResult = mysqli_query($db, $ratingQuery);
$ratingRow = mysqli_fetch_assoc($ratingResult);

$averageRating = $ratingRow['avg_rating'] ? round($ratingRow['avg_rating'], 1) : "No ratings yet";
echo "<p>Average Rating: $averageRating / 5</p>";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><?php echo $recipe['title']; ?> - Foodie Finder</title>
    <link rel="stylesheet" href="recipe.css" />
</head>
<body>
<header>
        <div class="container">
            <h1 class="logo">Authentic Recipes</h1>
            <nav>
                <ul class="nav-list">
                   <a href="index.php"> <li>Home</li></a>
                    <a href="saverecipe.php"><li>Saved Recipes</li></a>
                    <a href="profile.php"><li>Profile</li></a>
                </ul>
            </nav>
        </div>  
    </header> 

<div class="container">
  <!-- Left side for content -->
  <div class="text-section">
    <h1><?php echo $recipe['title']; ?></h1>
    <p><?php echo $recipe['description']; ?></p>

     <!-- Display Prep Time, Cook Time, and Servings -->
 <p><strong>Preparation Time:</strong> <?php echo htmlspecialchars($recipe['prep_time']); ?> minutes</p>
    <p><strong>Cooking Time:</strong> <?php echo htmlspecialchars($recipe['cook_time']); ?> minutes</p>
    <p><strong>Servings:</strong> <?php echo htmlspecialchars($recipe['servings']); ?></p>

    
    <h3>Ingredients:</h3>
    <ul>
      <?php while ($row = mysqli_fetch_assoc($ingredients_result)) : ?>
        <li><?php echo $row['ingredient_name'] . " - " . $row['quantity']; ?></li>
      <?php endwhile; ?>
    </ul>

    <h3>Instructions:</h3>
    <ol>
      <?php while ($instruction = mysqli_fetch_assoc($instructions_result)) : ?>
        <li><?php echo htmlspecialchars($instruction['instruction_text']); ?></li>
      <?php endwhile; ?>
    </ol>
  
  <h3>Nutritional Values (Per Serving):</h3>
<?php if ($nutrition): ?>
    <p><strong>Calories:</strong> <?= htmlspecialchars($nutrition['calories']); ?>kcal</p>
    <p><strong>Proteins:</strong> <?= htmlspecialchars($nutrition['protein']); ?>g</p>
    <p><strong>Carbs:</strong> <?= htmlspecialchars($nutrition['carbs']); ?>g</p>
    <p><strong>Fat:</strong> <?= htmlspecialchars($nutrition['fats']); ?>g</p>
<?php else: ?>
    <p>Nutritional information not available for this recipe.</p>
<?php endif; ?>
</div>

  <!-- Right side for image -->
  <div class="image-section">
    <img src="<?php echo $recipe['image_url']; ?>" alt="<?php echo $recipe['title']; ?>">
  </div>
</div>


<form action="saverecipe.php" method="post">
  <input type="hidden" name="recipe_id" value="<?=  htmlspecialchars($recipe['recipe_id']);?>">
  <button type="submit" name="save-btn">Save Recipe</button>
</form>



<!-- Display Average Rating with Stars -->
<p>Average Rating: 
    <?php
 if (!is_numeric($averageRating) || $averageRating == 0) {
    echo "No ratings yet";
} else {
    for ($i = 1; $i <= 5; $i++) {
        if ($i <= floor($averageRating)) {
            echo "⭐"; // Full Star
        } elseif ($i - $averageRating < 1) {
            echo "⭐"; // Partial Star
        } else {
            echo "☆"; // Empty Star
        }
    }
    echo " (" . $averageRating . " / 5)";
}

    ?>
</p>
<!-- Display the Rating Form -->
<h3>Rate This Recipe:</h3>
<form action="rating.php" method="post">
    <input type="hidden" name="recipe_id" value="<?php echo $recipe_id; ?>">
    <div class="star-rating">
        <?php for ($i = 5; $i >= 1; $i--): ?>
            <input type="radio" id="star<?php echo $i; ?>" name="rating" value="<?php echo $i; ?>" required />
            <label for="star<?php echo $i; ?>">☆</label>
        <?php endfor; ?>
    </div>
    <button type="submit" name="rate-btn">Submit Rating</button>
</form>


</body>
</html> 