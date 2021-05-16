
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "pfg";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}



$records = mysqli_query("SELECT id_studenti, meno, trieda, DATE_FORMAT(datum_narodenia, '%d.%m.%Y') AS datum FROM klausovci"); // fetch data from database

while($data = mysqli_fetch_array($records))
{
    ?>
    <tr>
        <td><?php echo $data['id_studenti']; ?></td>
        <td><?php echo $data['meno']; ?></td>
        <td><?php echo $data['trieda']; ?></td>
        <?php
        $dateOfBirth = $data['datum'];
        $today = date('d.m.y');
        $diff = date_diff(date_create($dateOfBirth), date_create($today));
        echo "<td>" . $diff->format('%y') . "</td>";
        ?>
    </tr>
    <?php
}
?>












<?php
/*
$servername = "sql4.webzdarma.cz";
$username = "chornyiwzsk7142";
$password = "chornyiwzsk7142";
$dbname = "12q@457XaK@$,XNec710";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT id_studenti, meno, trieda, datum_narodenia FROM studenti";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
        echo "id: " . $row['id_studenti']. " - Meno: " . $row['meno']. " - Trieda: " . $row['trieda']. " - Datum narodenia: " . $row['datum_narodenia'] ;
    }
} else {
    echo "0 results";
}

mysqli_close($conn);
?>

*/