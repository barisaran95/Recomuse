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

    <link rel="stylesheet" media="all" href="artiststyle.css" type="text/css">

</head>
<body>
  <h1><?php $selected_artist=$_GET['name'];
  echo $selected_artist;?></h1>
  <div class="body"></div>
  <div class="info">
  <?php
    session_start();
    $user=$_SESSION['user'];
    //echo $user;

    ini_set("display_errors",1);
    $con=mysqli_connect("localhost","root","root");
    mysqli_select_db($con,"recomuse");

    $userid=mysqli_query($con,"SELECT id FROM account_info where account_info.user_name='$user'")
      or die(mysqli_error($con));
    $row1=mysqli_fetch_array($userid);
    $name=mysqli_query($con,"SELECT name FROM artist_info WHERE name='$selected_artist'") or die(mysqli_error($con));
    $genre1=mysqli_query($con,"SELECT genre1 FROM artist_info WHERE name='$selected_artist'") or die(mysqli_error($con));
    $genre2=mysqli_query($con,"SELECT genre2 FROM artist_info WHERE name='$selected_artist'") or die(mysqli_error($con));
    $genre3=mysqli_query($con,"SELECT genre3 FROM artist_info WHERE name='$selected_artist'") or die(mysqli_error($con));
    $area=mysqli_query($con,"SELECT area FROM artist_info WHERE name='$selected_artist'") or die(mysqli_error($con));
    $year=mysqli_query($con,"SELECT year_formed FROM artist_info WHERE name='$selected_artist'") or die(mysqli_error($con));
    $info=mysqli_query($con,"SELECT info FROM artist_info WHERE name='$selected_artist'") or die(mysqli_error($con));
    $rowname=mysqli_fetch_array($name);
    echo 'Artist Name: '.$rowname[0].'<br><br>';
    $rowgen1=mysqli_fetch_array($genre1);
    echo "Genre: ".$rowgen1[0].", ";
    $rowgen2=mysqli_fetch_array($genre2);
    echo $rowgen2[0].",";
    $rowgen3=mysqli_fetch_array($genre3);
    echo $rowgen3[0]."<br><br>";
    $rowarea=mysqli_fetch_array($area);
    echo "Area: ".$rowarea[0]."<br><br>";
    $rowyear=mysqli_fetch_array($year);
    echo "Year Formed: ".$rowyear[0]."<br><br>";
    $rowinfo=mysqli_fetch_array($info);
    echo "Info: ".$rowinfo[0]."<br><br>";



    echo "Albums: <br>";
    $albums=mysqli_query($con,"SELECT album_name FROM album,has_album,artist_info WHERE artist_info.id=has_album.artist_id
      AND has_album.album_id=album.album_id AND artist_info.name='$selected_artist'") or die(mysqli_error($con));
    if ($albums->num_rows > 0) {
    while($row = $albums->fetch_assoc()) {
      ?>
      <a href="Album.php?name=<?php echo $row['album_name']; ?>"><?php echo $row['album_name']; ?></a><br>
      <?php
    }
  }





    $result=mysqli_query($con,"SELECT artist_name FROM account_libary,account_info where account_libary.user_id=account_info.id
      AND account_info.user_name='$user' AND account_libary.artist_name='$rowname[0]'")
      or die(mysqli_error($con));
    $row=mysqli_fetch_array($result);
    ?>
  </div>
  <?php

    if($row[0]==$rowname[0]){
      echo '<div class="already"><br>You have already liked this artist.<br></div>';
      ?>
      <form name="dislike" method="post">
  		<div class="dislike">
        <input class="dislikebutton" type="submit" name="dislikebutton" value="Remove From Libary"/>
      </div>
      </form>
      <?php
      if (isset($_POST['dislikebutton'])){
        $result2=mysqli_query($con,"DELETE FROM account_libary WHERE user_id='$row1[0]' AND account_libary.artist_name='$selected_artist'")
          or die(mysqli_error($con));
        header("Location:Disliked.php");
      }
    }else{
      ?>
      <form name="like" method="post">
  		<div class="like">
        <input class="likebutton" type="submit" name="likebutton" value="Like"/>
      </div>
      </form>

      <?php
      if (isset($_POST['likebutton'])){

      $artistid=mysqli_query($con,"SELECT id FROM artist_info where artist_info.name='$rowname[0]'")
        or die(mysqli_error($con));
      $row2=mysqli_fetch_array($artistid);

      $result2=mysqli_query($con,"INSERT INTO account_libary(user_id,artist_id,artist_name) VALUES('$row1[0]','$row2[0]','$rowname[0]')")
        or die(mysqli_error($con));

      header("Location:Liked.php");
      }
    }
  ?>


  <br><br><br>
  <a class="one" href="Recommendations.php">My Recommendations</a><br>
  <a class="one" href="Dashboard.php">Dashboard</a><br>
  <a class="one" href="Libary.php">My Libary</a><br>
</body>
</html>
