<?php
session_start();
include ("inc_dvdflix.php");
$statement = "";

if (isset($_POST['submit']))
{
	$user = $_POST['membertxt'];
	$pass = $_POST['passtxt'];
	
	
	if($user&$pass)
	{
		$checkQuery = mysql_query("SELECT memberid, password, email FROM members WHERE email ='$user' and password='$pass'");
		$rowNum = mysql_num_rows($checkQuery);
		
		if ($rowNum==0) {
			$statement = "error";
		}
		else 
		{
			if(!empty($_POST['remch']))
			{
				setcookie("email", $user, time()+4200, "/");
				setcookie("password", $pass, time()+4200, "/");
				}		
						else {
			if(isset($_COOKIE['email']))
			{
				setcookie("email", "");
				}
				if(isset($_COOKIE['password']))
			{
				setcookie("password", "");
				}

			echo "<script>location.href='DVDs.php'</script>";
			}
			$sessQuery = mysql_query("SELECT memberid, firstname, lastname FROM members WHERE email='$user' AND password ='$pass'");
			if (($data = mysql_fetch_assoc($sessQuery)) !== FALSE)
			{
				$_SESSION['memid'] = $data['memberid'];
				$_SESSION['first'] = $data['firstname'];
				$_SESSION['last'] = $data['lastname'];
				echo "<script>location.href='DVDs.php?" . session_id() . "'</script>";
			} 
		}
	}
	else {
		$statement = "error";
		}
}
?> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Login</title>
  <link rel="stylesheet" href="DVDFlix.css" type="text/css" />
  <script type="text/javascript" src="jquery.js"></script>
<!--Check for cookie and get data
   Check for form data.  If exists:
     Check to see if email exists in database.  If not, make error message visible.
     If does exist, write to database, write session data, write cookie if checked.
     Send control to login.
 Set background of container to 'dodgerblue' with jquery.-->
 
</head>

<body>
  <div style="background-color:dodgerblue" id="container">
    <p id="logo">DVD Flix</p>

    <div id="loginbox">
      <img src="Theater.jpg" />

      <form name="logform" method="post" action="login.php" id="logform">
        <br />

        <h1>Member Sign In</h1><br />

        <div id="formitems">
            Member ID: <input type="text" id="membertxt" name="membertxt" value="<?php if(isset($_COOKIE['email'])) {echo $_COOKIE['email']; } ?>" />

          <div id="errmsg">
              Error - Invalid member name or password.
          </div><br />
            Password: <input type="password" id="passtxt" name="passtxt" value="<?php if(isset($_COOKIE['password'])) {echo $_COOKIE['password']; } ?>" /><br />
        </div>
        <div id="hitcount">
        <?php
        	include("inc_hit_counter.php");
        ?>
        </div>
        <a href="ForgotPass.php">Email my password to me</a><br />
        <a href="Member.php">I am a new member</a><br />

        <p id="rem">&nbsp;<input type="checkbox" id="remch" name="remch" value=
        "1" />Remember me on this computer.</p><br />
        <input type="submit" id="submit" name="submit" value="submit" />
      </form>
    </div>
  </div>
<?php
	if ($statement == "error")
	{
	echo '<script>document.getElementById("errmsg").style.visibility = "visible"</script>';
	}
	?>
</body>
</html>
