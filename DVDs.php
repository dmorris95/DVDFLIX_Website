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
    <title>DVDs</title>
    <link rel="stylesheet" href="DVDFlix.css" />
    <script type="text/javascript" src="jquery.js"></script>
</head>

<!--get member info
-->


<body>
<div id="container">
  <div id="banner">
    <div id="logo">
      DVD Flix
    </div>
    <a href='../DVDFlix/<?php echo "Queue.php?" . session_id()?>' id="q">See Queue</a> 
    <a href="Login.php" id="n">
    <?php
    	echo $fName;
    	echo " " . $lName;
    ?>
    (logout) </a>
    <form id="dvdsearch" method="post" action="DVDs.php">
      Rating:
      <select id="ratingselect" name="ratingselect">
        <option>*</option>
          <!--get ratings-->  
          <?php
          	include("inc_dvdflix.php");
          	$RatingQuery = mysql_query("Select DISTINCT rating FROM dvds ORDER BY rating ASC");
          	while($row = mysql_fetch_array($RatingQuery)) {
          		echo "<option>" . $row{'rating'} . "</option>";}
          ?>
      </select>
      &nbsp;&nbsp;Year:
      <select id="yearselect" name="yearselect">
        <option>*</option>
<!--get years-->
			<?php
                            $YearQuery = mysql_query("SELECT DISTINCT EXTRACT(YEAR FROM date_released) AS exyear FROM dvds ORDER BY exyear ASC");
                            while($row = mysql_fetch_array($YearQuery)) {
                                echo "<option>" . $row{'exyear'} . "</option>";}
			?>

      </select>
       &nbsp;&nbsp;Title Search: <input type="text" id="searchtxt" name="searchtxt" />
      <input type="Submit" id="Submit" name="Submit" value="Search">
      </form>
  </div>
<!--Get rating, year, and search information  
Build and execute SQL for search
Create a form with a submit button and rows of DVD information with a checkbox to add to queue
The form is created by PHP commands writing out a table, looping for each record.  Consider the following:
-->
<?php     
	if (isset($_POST['Submit']))
	{
		$rating = $_POST['ratingselect'];
		$year = $_POST['yearselect'];
		$searchtext = $_POST['searchtxt'];
		$searchtext = ucwords($searchtext);
		$SearchArray = explode(" ", $searchtext);
		
		$Statement = "SELECT * FROM dvds";
		$WhereClause = "";
		$TextWhere = "";
		
		if ($rating != "*")
		{
			$WhereClause .= " WHERE rating='$rating'";
			if ($year != "*")
			{
				$WhereClause .= " AND date_released LIKE '%$year%'";
			}
		}
		else if ($year != "*")
		{
			$WhereClause .= " WHERE date_released LIKE '%$year%'";
		}
		if ($WhereClause != "")	 
		{	
			$first = 0;
			foreach ($SearchArray as $word)
			{
				if ($word !== "The" && "A" && "An" && "Is" && "Of" && "For" && "With" && "In")
				{
					if ($first == 0)
					{
						$TextWhere .= "WHERE title LIKE '%$word%'";
						$first = 1;
					}
					else {
					$TextWhere .= " OR title LIKE '%$word%'";
					}
				}
			}
		}
		
	$Order = " ORDER BY title";
	$Statement .= $WhereClause . $TextWhere.  $Order;
	 
        echo "<form id='dvdform' method='POST' action='AddDVDs.php?PHPSESSID='.session_id()'>";
        echo "<table id='searchtable'>\n";
        echo "<tr><td colspan=4>&nbsp;</td><td id='add'><input type='Submit' id='addsub' name='Submit' Value='Add' /></td></tr>";
        echo "<tr>" .
             "<th>Title</th><th>Rating</th>" .
             "<th>Description</th>" .
             "<th>Release Date</th>" .
             "<th>Add to Queue</tr>\n";
             $QueryResult = mysql_query('SELECT * FROM dvds');

        while (($Row = mysql_fetch_assoc($QueryResult)) !== FALSE) {
             echo "<tr>";
             echo "<td class='nowrap'>{$Row['TITLE']}</td>";
             echo "<td>{$Row['RATING']}</td>";
             echo "<td>{$Row['DESCRIPTION']}</td>";
             echo "<td class='nowrap'>{$Row['DATE_RELEASED']}</td>";
             echo "<td class='checks'><input type='checkbox' name='addcheck[]' value='{$Row["DVDID"]}' /></td></tr>\n";
          };
        echo "</table>\n";
        echo "</form>";
    }
?>
</div>
</body>

</html>
