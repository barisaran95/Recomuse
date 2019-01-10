<html>
<head>

  <meta charset="UTF-8">

  <title>Recomuse Recommendations</title>
  <style>
  body {
      background-image: url(/musicz.jpg);
      background-size: cover;
  }
  </style>

    <link rel="stylesheet" media="all" href="libarystyle.css" type="text/css">

</head>
<body>
  <h1>Your Recommendations</h1>
  <div class="body"></div>
  <?php
    session_start();
    ini_set("display_errors",1);
    $con=mysqli_connect("localhost","root","root");
    mysqli_select_db($con,"recomuse");

    echo "<h2>Hello ".$_SESSION['user'].". Here, these are some recommendations for you!</h2>";
    $temp=$_SESSION['user'];

    $userid=mysqli_query($con,"SELECT id FROM account_info where account_info.user_name='$temp'")
      or die(mysqli_error($con));
    $row_userid=mysqli_fetch_array($userid);

    $result1=mysqli_query($con,"SELECT DISTINCT account_libary.artist_name FROM account_libary,(SELECT DISTINCT account_libary.user_id FROM account_libary,(SELECT account_libary.artist_id FROM account_libary WHERE account_libary.user_id='$row_userid[0]') as a WHERE account_libary.artist_id=a.artist_id) as b WHERE account_libary.user_id=b.user_id
ORDER BY `account_libary`.`artist_name` ASC") or die(mysqli_error($con));

      if ($result1->num_rows > 0) {
      while($row = $result1->fetch_assoc()) {
        ?>
        <a class=one href="Artist.php?name=<?php echo $row['artist_name']; ?>"><?php echo $row['artist_name']; ?></a><br>
        <?php

      }
    }
  ?>



  <br><br><br>
  <a class=two href="Libary.php">My Libary</a><br>
  <a class=two href="Dashboard.php">Dashboard</a>
</body>
</html>
