<html>
<head>

  <meta charset="UTF-8">

  <title>Recomuse Dashboard</title>

  <style>
  body {
      background-image: url(/musicz.jpg);
      background-size: cover;
  }
  </style>

    <link rel="stylesheet" media="all" href="dashboardstyle.css" type="text/css">

</head>
<body>
  <h1>Dashboard</h1>
  <div class="body"></div>
  <?php
    session_start();
    ini_set("display_errors",1);
    $con=mysqli_connect("localhost","root","root");
    mysqli_select_db($con,"recomuse");

    echo "<h2>Hello ".$_SESSION['user'].". Here, you can find the most popular music!</h2>";

    $result1=mysqli_query($con,"SELECT artist_name,COUNT(*) as counter FROM account_libary,artist_info
    WHERE artist_info.id=artist_id GROUP BY artist_name ORDER BY `counter`  DESC LIMIT 5")
      or die(mysqli_error($con));

    if ($result1->num_rows > 0) {
    while($row = $result1->fetch_assoc()) {
      ?>
      <a class='one' href="Artist.php?name=<?php echo $row['artist_name']; ?>"><?php echo $row['artist_name']; ?></a>
      <?php echo '<div class="wrong">Has '.$row['counter'].' likes.</div>'; ?>
      <br>
      <?php
    }
  }

  ?>
  <br><br>
  <a class='two' href="Libary.php">My Libary</a><br>
  <a class='two' href="Recommendations.php">My Recommendations</a>
  <br><br>
  <form name="search" method="post">
  <div class="search">
      <input type="text" placeholder="Search...Press Enter To Search" name="search"><br>
  </div>
</form>
<?php
if (isset($_POST['search'])){
  $search = $_POST['search'];

  $search = stripcslashes($search);

  $search = mysqli_real_escape_string($con,$search);

  $search_result=mysqli_query($con,"SELECT name FROM artist_info where name= '$search'")
    or die(mysqli_error($con));

  $row=mysqli_fetch_array($search_result);
  if($row[0]==$search){
    //$_GET['name']=$row[0];
    header("Location:Artist.php?name=$row[0]");
  }else {
    $message = "There is no such artist in our database";
    echo "<script type='text/javascript'>alert('$message');</script>";
  }
}
?>
</body>
</html>
