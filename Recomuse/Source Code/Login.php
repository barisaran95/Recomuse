<html>
<head>

  <meta charset="UTF-8">

  <title>Recomuse Login</title>

  <link rel="stylesheet" media="all" href="style.css" type="text/css">

</head>

<body oncontextmenu="return false">
  <div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div>Reco<span>Muse</span></div>
		</div>
		<br>
		<form name="login" method="post">
		<div class="login">
				<input type="text" placeholder="Username" name="username"><br>
				<input type="password" placeholder="Password" name="password"><br>
        <input type="submit" value="Login"/>
        <p class="message">Not Registered?<a href="Register.php">Register</a></p>
		</div>
    </form>
    <?php
      session_start();
      ini_set("display_errors",1);
      $con=mysqli_connect("localhost","root","root");
      mysqli_select_db($con,"recomuse");
if (isset($_POST['username']) and isset($_POST['password'])){
      $username = $_POST['username'];
      $password = $_POST['password'];

      $username = stripcslashes($username);
      $password = stripcslashes($password);

      $username = mysqli_real_escape_string($con,$username);
      $password = mysqli_real_escape_string($con,$password);

      $result=mysqli_query($con,"SELECT * FROM account_info where user_name= '$username' and user_password= '$password'")
        or die(mysqli_error($con));



      $row=mysqli_fetch_array($result);
      if($row['user_name']==$username && $row['user_password']==$password){
        $_SESSION['user']=$username;
        header("Location:Dashboard.php");
      }else {
        $message = "Invalid username/password! Try again...";
        echo "<script type='text/javascript'>alert('$message');</script>";
      }
}
    ?>

</body>
</html>
