<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

?>

<head>
  <title>Teams: Away Victories</title>
 <link rel="stylesheet" type="text/css" href="style.css">
  <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  </head>
  
  <body bgcolor="white">
  <div id="text">
  
  <hr>
  
  
<?php
  

$query = "SELECT t1.name AS awayTeam, t2.name AS homeTeam, away_score, home_score, date FROM game JOIN team t1 ON game.team_code_home=t1.code JOIN team t2 ON game.team_code_away=t2.code WHERE away_score > home_score";

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
        <th>Away Team</th>
        <th>Home Team</th>
        <th>Away Score</th>
        <th>Home Score</th>
        <th>Date</th>
        </tr>";

        while($row = mysqli_fetch_array($result, MYSQLI_BOTH)){
            echo "<tr>";
            echo "<td>" . $row['awayTeam'] . "</td>";
            echo "<td>" . $row['homeTeam'] . "</td>";
            echo "<td>" . $row['away_score'] . "</td>";
            echo "<td>" . $row['home_score'] . "</td>";
            echo "<td>" . $row['date'] . "</td>";
        }
        echo "</table>";

mysqli_free_result($result);

mysqli_close($conn);

?>

<hr>

  <button class="btn btn-default"><a href="index.html">Home</a></button>  
 
</body>
</html>
    