<!DOCTYPE>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Process Forgot Password</title>
<link rel="stylesheet" href="DVDFlix.css" />
<script type="text/javascript" src="jquery.js"></script>
</head>
<!--Get submission data
  Check to see if already in database,
      If not, change value of message.
      If is, retrieve password and email it and change value of message.
-->      
<body>
<div id="container">
  <div id="banner">
    <div id="logo">
      DVD Flix
    </div>
    <a href="#" id="n">Return to login page</a>
  </div>
	<?php
		function display()
		{
	?>

  <form id="passform" method="POST" action="">
    <p>Please enter your member email address</p>
    <input type="text" id="emailin" name="emailin" /><div id="forgotmessage">&nbsp;</div><br />
    <input type="submit" id="submit" name="submit" value="submit" /><br /><br />
    
  </form>
  
  <?php
  }
  
  include ("inc_dvdflix.php");
  
  if (isset($_POST['submit']))
  {
  	$email = $_POST['emailin'];
  	
  		if ($email == "")
  		{
  			display();
  		}
  		else {
  			if ($email)
  			{
  				$emailCheck =mysql_query("SELECT password, email FROM members WHERE email='$email'");
  				$Result = mysql_fetch_assoc($emailCheck);
  				$rowNumber = mysql_num_rows($emailCheck);
  				
				if ($rowNumber == 0)
				{
					display();
					echo "<script>$('#forgotmessage').append('<p>Email not found in database. Please try again.</p>');</script>"; 
				}
				else
				{
                                    $To = "morri222@pnw.edu";
                                    $Subject = "Forgotten Password";
                                    $Message = "Your password is: " . $Res['PASSWORD'] . " . We thank you for choosing DVDFlix.";
                                    $Headers = "From: DVD Flix";
                                    $conMsg = mail($To, $Subject, $Message, $Headers);
				
                                    if ($conMsg)
                                    {
                                            display();
                                            echo "<script>$('#forgotmessage').append('<p>Your password has been sent.</p>');</script>";
                                    }
                                    else
                                    {
					display();
					echo "<script>$('#forgotmessage').append('<p>There was an error.</p>');</script>";
                                    }
				}
			}
		}
	}
	else
	{
            display();
	}	
  ?>
</div>
</body>
</html>

