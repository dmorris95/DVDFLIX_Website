<?php
$DBName = "demo";
$DBConnect = @mysql_connect("127.0.0.1", "root", "root");

if ($DBConnect === FALSE)
     echo "<p>Connection error: "
               . mysql_error() . "</p>\n";
else {
     if (@mysql_select_db($DBName, $DBConnect) === FALSE) {
          echo "<p>Could not select the \"$DBName\" " .
               "database: " . mysql_error($DBConnect) . "</p>\n";
          mysql_close($DBConnect);
          $DBConnect = FALSE;
     }

	$SQLString = "UPDATE hit_counter SET hits= hits + 1";
	$QueryResult = @mysql_query($SQLString, $DBConnect);
	if ($QueryResult === FALSE)
		echo "<p>Update failed</p>";
	else{
	$Row = mysql_fetch_row(mysql_query("SELECT hits FROM hit_counter"));
		echo $Row[0];
}
}

?>
