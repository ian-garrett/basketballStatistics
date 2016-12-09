<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

?>

<head>
  <title>Players: Finals MVP</title>
 <link rel="stylesheet" type="text/css" href="style.css">
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

<hr>

  <button class="btn btn-default"><a href="index.html">Home</a></button> 
 
</body>
</html>
    