<!DOCTYPE html>
<html>

<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <title>Member</title>
    <link rel="stylesheet" href="DVDFlix.css" />
    <script type="text/javascript" src="query.js"></script>
</head>

<!--get form data
    If email is already in table, make error message visible
    Otherwise insert it into the table and send control back to the login page
    -->

<body>
<div id="container">
  <div id="banner">
    <div id="logo">
      DVD Flix
    </div>
  </div>
  <form id="member" action="Member.php" method="POST">
     <fieldset id="memberfieldset">
     <legend>New Member Information</legend>
        <br />
        <label for="fName">First, Last Name</label>
        <input name="fName" id="fName"  />&nbsp;<input name="lName" id="lName"  /><br />

        <label for="street">Street Address&nbsp;</label>
        <input name="street" id="street"  /><br />

        <label for="city">City, State, Zip&nbsp;</label>
        <input name="city" id="city"  />,&nbsp;
            <select id="state" name="state" >
               <option>AL</option>
               <option>AK</option>
               <option>AZ</option>
               <option>AR</option>
               <option>CA</option>
               <option>CO</option>
               <option>CT</option>
               <option>DE</option>
               <option>FL</option>
               <option>GA</option>
               <option>HI</option>
               <option>ID</option>
               <option>IL</option>
               <option>IN</option>
               <option>IA</option>
               <option>KS</option>
               <option>KY</option>
               <option>LA</option>
               <option>ME</option>
               <option>MD</option>
               <option>MA</option>
               <option>MI</option>
               <option>MN</option>
               <option>MS</option>
               <option>MO</option>
               <option>MT</option>
               <option>NE</option>
               <option>NV</option>
               <option>NH</option>
               <option>NJ</option>
               <option>NM</option>
               <option>NY</option>
               <option>NC</option>
               <option>ND</option>
               <option>OH</option>
               <option>OK</option>
               <option>OR</option>
               <option>PA</option>
               <option>RI</option>
               <option>SC</option>
               <option>SD</option>
               <option>TN</option>
               <option>TX</option>
               <option>UT</option>
               <option>VT</option>
               <option>VA</option>
               <option>WA</option>
               <option>WV</option>
               <option>WI</option>
               <option>WY</option>
            </select>

         <input name="zip" id="zip"  /><br />
         
         <label for="email">Email Address&nbsp;</label>
        <input name="email" id="email"  />
        <span id="emailmsg"></span><br />
        
        <label for="pass">Password&nbsp; </label>
        <input type="password" name="pass" id="pass"  /><br /><br />
         <input type="submit" id="submit" name="submit" value="submit" />
       </fieldset>
       </form>
</div>
<?php
	include ("inc_dvdflix.php");
	
	if(isset($_POST['submit']))
	{
		$firstName = $_POST['fName'];
		$lastName = $_POST['lName'];
		$street = $_POST['street'];
		$city = $_POST['city'];
		$state = $_POST['state'];
		$zip = $_POST['zip'];
		$email = $_POST['email'];
		$password = $_POST['pass'];
		
		$checkQuery = mysql_query("SELECT email FROM members WHERE email='$email'");
		$numRows = mysql_num_rows($checkQuery);
		
		if ($numRows > 0)
		{
			echo '<script type="text/javascript">document.getElementById("emailmsg").innerHTML = "E-mail already exists, enter a new email."</script>';
		}
		else
		{
			$Statement = "INSERT INTO members(lastname, firstname, address, city, state, postal_code, email, password ) VALUES ('$lastName', '$firstName', '$street', '$city', '$state', '$zip', '$email', '$password')";
			echo $Statement;
			if (mysql_query($Statement))
			{
			echo "<script>location.href= 'Login.php'</script>";
			}
			else
			{
			echo "Error";
			}
		}
	}	
?>

</body>

</html>
