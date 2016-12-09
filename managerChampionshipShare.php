<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

?>

<head>
  <title>Colleges: NBA Alumni</title>
 <link rel="stylesheet" type="text/css" href="style.css">
  </head>
  
  <body bgcolor="white">
  <div id="text">
  
  <hr>
  
  
<?php
  

$query = "SELECT concat(g.first_name,' ',g.last_name) AS managerName, t.name as teamName, count(*) AS numOfChamps
FROM general_manager g
JOIN championship c ON(g.team_code=c.team_code_winner)
JOIN team t ON(g.team_code=t.code)
WHERE g.start_season <= c.year
GROUP BY managerName
ORDER BY numOfChamps DESC";

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
        <th>General Manager</th>
        <th>Team</th>
        <th>Wins</th>
        </tr>";

        while($row = mysqli_fetch_array($result, MYSQLI_BOTH)){
            echo "<tr>";
            echo "<td>" . $row['managerName'] . "</td>";
            echo "<td>" . $row['teamName'] . "</td>";
            echo "<td>" . $row['numOfChamps'] . "</td>";
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
    