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
  

$query = "SELECT p.college_name, CONCAT(ROUND((SUM(r.salary)/(SELECT SUM(salary) FROM professional)*100),2),'%') as salaryShare
FROM player p JOIN professional r ON (p.id=r.player_id)
WHERE p.college_name!='NONE'
GROUP BY p.college_name
ORDER BY sum(r.salary) DESC
LIMIT 10;";

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
        <th>College</th>
        <th>NBA Salary Share held by Alumni</th>
        </tr>";

        while($row = mysqli_fetch_array($result, MYSQLI_BOTH)){
            echo "<tr>";
            echo "<td>" . $row['college_name'] . "</td>";
            echo "<td>" . $row['salaryShare'] . "</td>";
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
    