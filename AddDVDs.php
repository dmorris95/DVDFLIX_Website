<?php
    	session_start();
    	$member_id = $_SESSION['memid'];
    	$fName =  $_SESSION['first'];
    	$lName =  $_SESSION['last'];
?>

<!DOCTYPE html >

<html >
<head>
  <title>Add DVDs</title>
</head>

<body>
<?php
    include("inc_dvdflix.php");

    if (isset($_POST['Submit']))
            {
            foreach ($_POST['addcheck'] as $addDVD)
            {
                    echo"<p>" . $addDVD . "</p>";
                    if (duplicate($member_id, $addDVD) == TRUE ) {
                            $orderNum = findnextorder($member_id);

                            $InsertQuery = "INSERT INTO queue (memberid, dvdid, orderno) VALUES ('$member_id', '$addDVD', '$orderNum')";

                            $Result = mysql_query($InsertQuery);
                            if($Result === FALSE) {
                                echo "<p>Error</p>";
                                }
                            else {
                                echo "<p>Success</p>";
                                }
                        }
                    }
                    echo "<script>location.href='Queue.php?" . session_id() . "'</script>";
            }
            function duplicate($Memberin,$addidin) {
                $DuplicateQuery = "SELECT dvdid FROM queue WHERE memberid='$Memberin' AND dvdid='$addidin'";
                $DuplicateResult = mysql_query($DuplicateQuery);
                $DuplicateCheck = mysql_fetch_row($DuplicateResult);
                if ($DuplicateCheck[0] == $addidin) {
                    $returnValue = FALSE;
                    }
                else {
                    $returnValue = TRUE;
                    }
                return $returnValue;	
            }

    function findnextorder($Memberin){
            $HighestQuery = "SELECT MAX(orderno) FROM queue WHERE memberid='$Memberin'";
            $Result = mysql_query($HighestQuery);
            $NumResult = mysql_fetch_row($Result);

            if($NumResult[0] == 0)
            {
                    $orderNum = 1;
            }
            else
            {
                    $orderNum = $NumResult[0] + 1;
            }
            return $orderNum;	
    }
?>

  <!--  
  Get member id and member name via sessions
  Get the array of DVDs to add via forms processing
  Loop through the array, if not duplicate, add to queue table
  
  Send control to queue.php
-->
</body>
</html>
