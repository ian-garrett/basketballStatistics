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
  

$query = "SELECT concat(c.mvp_first,' ',c.mvp_last) as player, COUNT(*) AS numMVPs FROM championship c WHERE concat(c.mvp_first,' ',c.mvp_last) IS NOT NULL GROUP BY Player ORDER BY count(*) DESC";

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
        <th>Player</th>
        <th>Number of Final MVPs Received</th>
        </tr>";

        while($row = mysqli_fetch_array($result, MYSQLI_BOTH)){
            echo "<tr>";
            echo "<td>" . $row['player'] . "</td>";
            echo "<td>" . $row['numMVPs'] . "</td>";
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
    