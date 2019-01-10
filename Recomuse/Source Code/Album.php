<html>
<head>

  <meta charset="UTF-8">

  <title>Recomuse Artist Info</title>

  <style>
  body {
      background-image: url(/musicz.jpg);
      background-size: cover;
  }
  </style>

    <link rel="stylesheet" media="all" href="albumstyle.css" type="text/css">

</head>
<body>
  <h1><?php $selected_album=$_GET['name'];
  echo $selected_album;?></h1>
  <div class="body"></div>
  <div class="info">
  <?php
    session_start();
    ini_set("display_errors",1);
    $con=mysqli_connect("localhost","root","root");
    mysqli_select_db($con,"recomuse");


    $year=mysqli_query($con,"SELECT album_year FROM album WHERE album.album_name='$selected_album'") or die(mysqli_error($con));
    $row_year=mysqli_fetch_array($year);
    echo "Year: $row_year[0]<br>";

    $songs=mysqli_query($con,"SELECT song_name FROM song,has_song,album WHERE album.album_id=has_song.album_id AND has_song.song_id=song.song_id
    AND album.album_name='$selected_album'") or die(mysqli_error($con));
    echo "Songs: <br>";
    ?>
  </div>
  <?php
    if ($songs->num_rows > 0) {
    // output data of each row
    while($row = $songs->fetch_assoc()) {
      //echo $row['name']."<br>";
      ?>
      <a class="two" href="https://www.youtube.com/results?search_query=<?php echo $selected_album; echo " "; echo $row['song_name']; ?>" target="_blank"><?php echo $row['song_name']; ?></a><br>
      <?php
    }
  }




    ?>

    </div>
    <br><br><br>
    <a class="one" href="Recommendations.php">My Recommendations</a><br>
    <a class="one" href="Dashboard.php">Dashboard</a><br>
    <a class="one" href="Libary.php">My Libary</a><br>
    </body>
  </html>
