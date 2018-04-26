<?php
    	session_start();
    	$member_id = $_SESSION['memid'];
    	$fName =  $_SESSION['first'];
    	$lName =  $_SESSION['last'];
 ?>
<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>Queue</title>
<link rel="stylesheet" href="DVDFlix.css" />
<script type="text/javascript" src="jquery.js"></script>

<!--get member information, and the arraydvdids of dvds that were checked as to be deleted
    make a loop to go through the array and execute an sql statement to delete
   make three arrays and loop through and populate them with order number, dvidid, and title using
   array_push
-->

<?php
	include("inc_dvdflix.php");
	$QueryQ = "SELECT * FROM queue WHERE memberid = '$member_id'";
	
	$index = array();
	$DVDIDarray = array();
	$titleArray = array();
	
	$QueueRes = mysql_query($QueryQ);
	while (($Result = mysql_fetch_assoc($QueueRes))) {
		$index[]= $Result['ORDERNO'];
		$DVDIDarray[] = $Result['DVDID'];
	}
	
	foreach ($DVDIDarray as $ID) {
		$QueryStr = "SELECT title FROM dvds WHERE dvdid = '$ID'";
		$Result = mysql_query($QueryStr);
		while (($QueryRes = mysql_fetch_assoc($Result))) {
			$titleArray[] = $QueryRes['title'];
		}
	}

?>
</head>

<body>
<div id="container">
  <div id="banner">
    <div id="logo">
      DVD Flix
    </div>
    <a href="DVDS.php" id="q">See DVDs</a>
    <a href="Login.php" id="n">
    <?php
    	echo $fName;
    	echo " " . $lName;
    	?>
    
		(logout)</a>
   </div>
   
   <?php
   if (isset($_POST['Submit']))
   {
   	foreach ($_POST['delcheck'] as $deleteDVD)
   	{
   		echo "<p>{$deleteDVD}</p>";
   		
   		$SQLStr = "SELECT orderno FROM queue WHERE dvdid='$deleteDVD' and memberid ='$member_id'";
   		$Query = mysql_query($SQLStr);
   		$Someting = mysql_fetch_assoc($Query);
   		$upNum = $Someting['orderno'];
   		
   		$DeleteQueue = "DELETE FROM queue WHERE dvdid='$deleteDVD' and memberid ='$member_id'";
   		if (mysql_query($DeleteQueue))
   		{
   			$UpQueue = "UPDATE queue SET orderno = orderno-1 WHERE orderno > '$upNum'";
   			if (mysql_query($UpQueue)) {
   			echo "Updated";
   			echo "<script>location.href='Queue.php?" . session_id() . "'</script>";
			}
   		}
   		else 
   		{
   			echo "Error removing DVD";
   			}
   		}
   	}
   	else 
   	{
   
   
   ?>

  <form id="queueform" method="post" action="Queue.php">
    <table id='dvdtable'>
    
    <?php
        $evenRow = 1;
        echo "<tr><td>My Queue</td><td id='add'><input type='Submit' id='update' name='Submit' Value='Update Queue' /> </td></tr>";
                
        $ordStr = "SELECT orderno FROM queue WHERE memberid= '$member_id'";
        $spot = array();
        $Res = mysql_query($ordStr);
        	
        	while (($number = mysql_fetch_assoc($Res)))
        	{
        		$spot[] = $number['orderno'];
        	}
        	
        	$rows = mysql_num_rows($Res);
        	
        	//echo json_encode($spot);
        	//echo json_encode($titleArray);
        	//echo json_encode($index);
        
		for($ndx=1; $ndx-1<$rows; $ndx++)
		{
			if ($evenRow%2 == 0)
			{ 
        echo "<tr class='blueback'><td>{$ndx}</td><td>".$titleArray[($spot[$ndx-1])-1]."</td><td class='checks'>";
        echo "<input type='checkbox' id='"."delcheck' name='delcheck[]' value='{$DVDIDarray[($spot[$ndx- 1])-1]}' /></td</tr>";
        }
        else
        {
    	echo "<tr><td>{$ndx}</td><td>".$titleArray[($spot[$ndx-1])-1]."</td><td class='checks'>";
        echo "<input type='checkbox' id='"."delcheck' name='delcheck[]' value='{$DVDIDarray[($spot[$ndx- 1])-1]}' /></td</tr>";
		}
		
		$evenRow++;
		}
		
     
        ?>
  </table>
  
  </form>
  <?php
  }
  ?>
</div>
</body>

</html>
