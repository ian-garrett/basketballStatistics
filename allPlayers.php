<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

?>

<head>
  <title>Players</title>
 <link rel="stylesheet" type="text/css" href="style.css">
  </head>
  
  <body bgcolor="white">
  <div id="text">
  
  <hr>
  
  
<?php
  

$query = "SELECT p.first_name, p.last_name, p.age, p.height_feet, p.height_inches, p.weight, p.team_code, 
s.field_goals_made, s.field_goals_attempted, s.free_throws_made, s.free_throws_attempted, s.minutes, s.points_per_game, s.rebounds, 
s.assists, s.blocks, s.steals, s.turnovers
FROM player p join player_stats s ON p.id=s.player_id ORDER BY p.last_name";

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
        <th>Name</th>
        <th>Age</th>
        <th>Height</th>
        <th>Weight</th>
        <th>Team</th>
        <th>Minutes</th>
        <th>FG Made</th>
        <th>FG Attempted</th>
        <th>FT Made</th>
        <th>FT Attempted</th>
        <th>Points</th>
        <th>Rebounds</th>
        <th>Assists</th>
        <th>Blocks</th>
        <th>Steals</th>
        <th>Turnovers</th>
        </tr>";

        while($row = mysqli_fetch_array($result, MYSQLI_BOTH)){
            echo "<tr>";
            echo "<td>" . $row['first_name']. ' ' . $row['last_name'] . "</td>";
            echo "<td>" . $row['age'] . "</td>";
            echo "<td>" . $row['height_feet'] . '-' . $row['height_inches'] . "</td>";
            echo "<td>" . $row['weight'] . "</td>";
            echo "<td>" . $row['team_code'] . "</td>";
            echo "<td>" . $row['minutes'] . "</td>";
            echo "<td>" . $row['field_goals_made'] . "</td>";
            echo "<td>" . $row['field_goals_attempted'] . "</td>";
            echo "<td>" . $row['free_throws_made'] . "</td>";
            echo "<td>" . $row['free_throws_attempted'] . "</td>";
            echo "<td>" . $row['points_per_game'] . "</td>";
            echo "<td>" . $row['rebounds'] . "</td>";
            echo "<td>" . $row['assists'] . "</td>";
            echo "<td>" . $row['blocks'] . "</td>";
            echo "<td>" . $row['steals'] . "</td>";
            echo "<td>" . $row['turnovers'] . "</td>";
        }
        echo "</table>";

mysqli_free_result($result);

mysqli_close($conn);

?>

<p>
<hr>

<p>
 <span><button><a href="index.html">Home</a></button> <button><a href="allPlayers.php">Reset</a></button></span>  
 
</body>
</html>
    