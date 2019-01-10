<html>
<head>

  <meta charset="UTF-8">

  <title>Recomuse Register</title>

  <link rel="stylesheet" media="all" href="styleregister.css" type="text/css">

</head>

<body oncontextmenu="return false">
  <div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div>Reco<span>Muse</span></div>
		</div>
		<br>
		<form name="register" method="post">
		<div class="register">
				<input type="text" placeholder="Username" name="username"><br>
				<input type="password" placeholder="Password" name="password"><br>
        <input type="email" placeholder="E-Mail" name="email"><br>
        <input type="submit" value="Register">
        <p class="message">Already Registered?<a href="Login.php">Login</a></p>
		</div>
    </form>
    <?php
      ini_set("display_errors",1);
      $con=mysqli_connect("localhost","root","root");
      mysqli_select_db($con,"recomuse");
if (isset($_POST['username']) and isset($_POST['password']) and isset($_POST['email'])){
      $username = $_POST['username'];
      $password = $_POST['password'];
      $email = $_POST['email'];

      $username = stripcslashes($username);
      $password = stripcslashes($password);
      $email = stripcslashes($email);

      $username = mysqli_real_escape_string($con,$username);
      $password = mysqli_real_escape_string($con,$password);
      $email = mysqli_real_escape_string($con,$email);

      $result=mysqli_query($con,"INSERT INTO account_info(user_name,user_password,user_email) VALUES('$username','$password','$email')")
        or die(mysqli_error($con));

      header("Location:Registered.php");
}
    ?>

</body>
</html>
