<?php

include 'SQL.php';
$sql = new SQL();
$result = $sql->GetGuesbookPosts();
?>

<htlm>
<body>
<h2>Posts</h2>
<?php 

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    $name = $row["name"];
    $gender = $row["gender"];
    $email = $row["email"];
    $website = $row["website"];
    $comment = $row["comment"];

    $genderString = $gender ? " - $gender" : "";

    $html = "
        <h3>$name $genderString</h3>
        <h5>Email: $email | Webseite: $website</h5>

        <div>$comment</div>
        <hr>
    ";

    echo $html;
    
  }
} else {
  echo "0 posts";
}

?>
</body>
</html>