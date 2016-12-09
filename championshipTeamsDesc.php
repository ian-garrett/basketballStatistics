<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

?>

<head>
  <title>Teams: Championships</title>
 <link rel="stylesheet" type="text/css" href="style.css">
  </head>
  
  <body bgcolor="white">
  <div id="text">
  
  <hr>
  
  
<?php
  

$query = "SELECT t.name, t.year_founded, count(*) AS 'Championships' FROM team t JOIN championship c ON (t.code=c.team_code_winner) GROUP BY t.name ORDER BY count(*) DESC;";

?>

<p>
The query:
<p>
<?php
print $query;
?>

<hr>
<p>
Result of query:
<p>

<?php
$result = mysqli_query($conn, $query)
or die(mysqli_error($conn));
echo "<table width ='100%' border='1'>
        <tr>
        <th>Team Name</th>
        <th>Championships Won</th>
        <th>Year Founded</th>
        </tr>";

        while($row = mysqli_fetch_array($result, MYSQLI_BOTH)){
            echo "<tr>";
            echo "<td>" . $row['name'] . "</td>";
            echo "<td>" . $row['Championships'] . "</td>";
	    echo "<td>" . $row['year_founded'] . "</td>";
        }
        echo "</table>";

mysqli_free_result($result);

mysqli_close($conn);

?>

<p>
<hr>

<p>
 <span><button><a href="index.html">Home</a></button> <button><a href="teamBudgetDesc.php">Reset</a></button></span>  
 
</body>
</html>
    