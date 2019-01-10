<html>
<head>

  <meta charset="UTF-8">

  <title>Recomuse Libary</title>
  <style>
  body {
      background-image: url(/musicz.jpg);
      background-size: cover;
  }
  </style>

    <link rel="stylesheet" media="all" href="libarystyle.css" type="text/css">

</head>
<body>
  <h1>My Libary</h1>
  <div class="body"></div>

  <?php
    session_start();
    ini_set("display_errors",1);
    $con=mysqli_connect("localhost","root","root");
    mysqli_select_db($con,"recomuse");

    echo "<h2>Hello ".$_SESSION['user'].". Here, these are the artists that you have liked!</h2>";
    $temp=$_SESSION['user'];
    $userid=mysqli_query($con,"SELECT id FROM account_info where account_info.user_name='$temp'")
      or die(mysqli_error($con));
    $row1=mysqli_fetch_array($userid);

    $result1=mysqli_query($con,"SELECT artist_name FROM account_libary
    WHERE account_libary.user_id='$row1[0]' GROUP BY artist_name")
      or die(mysqli_error($con));

    //$row=mysqli_fetch_array($result);
    if ($result1->num_rows > 0) {
    // output data of each row
    while($row = $result1->fetch_assoc()) {
      //echo $row['name']."<br>";
      ?>
      <a class="one" href="Artist.php?name=<?php echo $row['artist_name']; ?>"><?php echo $row['artist_name']; ?></a><br>
      <?php

    }
  }

  ?>


  <br><br><br>
  <a class="two" href="Recommendations.php">My Recommendations</a><br>
  <a class="two" href="Dashboard.php">Dashboard</a>
</body>
</html>
