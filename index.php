<?php 
  session_start(); 

  if (!isset($_SESSION['username'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location: login.php');
  }
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: login.php");
  }

error_reporting(E_ALL);
ini_set('display_errors', 1);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Foodie Finder</title>
</head>
<body>
    <header>
        <div class="container">
            <h1 class="logo">Authentic Recipes</h1>
            <nav>
                <ul class="nav-list">
                    <li>Home</li>
                    <a href="saverecipe.php"><li>Saved Recipes</li></a>
                    <a href="profile.php"><li>Profile</li></a>
                </ul>
            </nav>
        </div>  
    </header> 
    <!-- notification message -->
<?php if (isset($_SESSION['success'])) : ?>
    <div class="error success">
        <h3>
            <?php 
                echo $_SESSION['success']; 
                unset($_SESSION['success']);
            ?>
        </h3>
    </div>
<?php endif ?>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-section">
           
            <div class="hero-text">
                <h2>Welcome to Foodie Finder!!</h2>
                <p>Savor the Flavor: Delightful Recipes for Every Craving 🍽</p>
                <form action="search.php" class="search-box" method="GET">
                    <input type="text" name="query" placeholder="Search Recipes">
                    <a href="recipe.php"><button type="submit">Search</button></a>
                </form>
            </div>
        </div>
    </section>
    

    <!-- Recipe Section -->
    <section class="recipes">
        <h2>Trending Recipes</h2>
        <div class="recipe-section">
            <div class="recipe-card">
                <img src="uploads/butterpaneer.jpg" alt="Butter Paneer">
                <h2>Butter Paneer</h2>
                <p>"Creamy, rich, and utterly delicious – Butter Paneer perfection!" 😋🔥</p>
                <a href="recipe.php?id=17">View Recipe</a>



            </div>

            <div class="recipe-card">
                <img src="uploads/gulabjamun.jpg" alt="Gulabjamun">
                <h2>Gulabjamun</h2>
                <p>Soft, syrupy, and blissfully sweet in every bite! 🍯😋</p>
                <a href="recipe.php?id=19">View Recipe</a>



            </div>

            <div class="recipe-card">
                <img src="uploads/masaladosa.jpg" alt="Masala Dosa">
                <h2>Masala Dosa</h2>
                <p>Crispy, golden, and stuffed with spicy goodness! 🥞✨</p>
                <a href="recipe.php?id=18">View Recipe</a>



            </div>

            <div class="recipe-card">
                <img src="uploads/cheesecake.jpg" alt="Cheesecake">
                <h2>Cheesecake</h2>
                <p>Velvety smooth, rich, and melt-in-your-mouth indulgence! 🍰😍</p>
                <a href="recipe.php?id=27">View Recipe</a>



            </div>

            <div class="recipe-card">
                <img src="uploads/dahivada.jpg" alt="Dahivada">
                <h2>Dahivada</h2>
                <p>Cool, tangy, and perfectly spiced for a refreshing treat! 🥄🤤</p>
                <a href="recipe.php?id=20">View Recipe</a>



            </div>

        </div>
    </section>  
</body>
</html>

