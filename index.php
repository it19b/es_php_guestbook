<?php

include 'SQL.php';

$result = null;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $sql = new SQL();
  $result = $sql->InsertEntry($_POST);
}

?>
<!DOCTYPE HTML>  
<html>
<head>
</head>
<body>


<h2>Banana</h2>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">  
  Name: <input type="text" name="name">
  <br><br>
  E-mail: <input type="email" placeholder="Email Adresse" name="email">
  <br><br>
  Website: <input type="url" name="website">
  <br><br>
  Comment: <textarea name="comment" maxlength="600" rows="5" cols="40"></textarea>
  <br><br>
  Gender:
  <input type="radio" name="gender" value="female">Female
  <input type="radio" name="gender" value="male">Male
  <input type="radio" name="gender" value="other">Other
  <br><br>
  <input type="submit" name="submit" value="Submit">  
</form>

<?php

if ($result) {
  // redirect to all posts
  header('Location: ' . "/es_php_guestbook/posts.php");
  die();
} elseif (is_string($result)) {
  ?> <h3> <?php $result ?> </h3> <?php
} 

?>

</body>
</html>
