<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

?>

<head>
  <title>Teams: Total Transactions</title>
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
  

$query = 'SELECT team.name AS trans, IFNULL(tr1.t1_count,0)+IFNULL(tr2.t2_count,0) AS trans_cond FROM team LEFT OUTER JOIN (SELECT team_code_1, COUNT(team_code_1) AS t1_count FROM transaction GROUP BY team_code_1) AS tr1 ON team.code=tr1.team_code_1 LEFT OUTER JOIN (SELECT team_code_2, COUNT(team_code_2) AS t2_count FROM transaction GROUP BY team_code_2) AS tr2 ON team.code=tr2.team_code_2 WHERE IFNULL(tr1.t1_count,0)+IFNULL(tr2.t2_count,0)!=0 ORDER BY trans_cond DESC';

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
        <th>Team</th>
        <th>Number of Transactions</th>
        </tr>";

        while($row = mysqli_fetch_array($result, MYSQLI_BOTH)){
            echo "<tr>";
            echo "<td>" . $row['trans'] . "</td>";
            echo "<td>" . $row['trans_cond'] . "</td>";
        }
        echo "</table>";

mysqli_free_result($result);

mysqli_close($conn);

?>

<hr>

  <button class="btn btn-default"><a href="index.html">Home</a></button>  
 
</body>
</html>
    