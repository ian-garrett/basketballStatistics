<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

?>

<head>
  <title>Staff: Coaches by Salary</title>
 <link rel="stylesheet" type="text/css" href="style.css">
  </head>
  
  <body bgcolor="white">
  <div id="text">
  
  <hr>
  
  
<?php
  

$query = "SELECT concat(c.first_name,' ',c.last_name) AS coachName, t.name AS teamName, CONCAT('$',FORMAT(c.salary,0)) as salary
FROM coach c JOIN team t ON(c.team_code=t.code)
ORDER BY c.salary DESC";

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
        <th>Coach</th>
        <th>Team</th>
        <th>Salary</th>
        </tr>";

        while($row = mysqli_fetch_array($result, MYSQLI_BOTH)){
            echo "<tr>";
            echo "<td>" . $row['coachName'] . "</td>";
            echo "<td>" . $row['teamName'] . "</td>";
            echo "<td>" . $row['salary'] . "</td>";
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
    