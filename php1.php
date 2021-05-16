
<?php/*
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




<body>
<b>AHOJ </b>, <br /><i>dobry den</i>.

<div id="moj1">blaa</div>

<br />
<br />
<br />

<?php

$cislo = 14;
$cislo2 = 2;
$text = "Peter";

echo $cislo2;
var_dump($cislo);
echo "<hr />";

$vysledok = $cislo % $cislo2;
echo "Vysledok: " . $vysledok;

echo "<hr />";


/*
//suffix
$zmluvy__tmp_2019;
$zmluvy__tmp_2020;
$zmluvy__tmp_2021;



//prefix
$provizie_detaily;
$provizie_vypocty;
$provizie_vyplaty;

$c_krajina;
$c_farba;
$c_kraj;

*/

//komentar
#komentar

$_mod = 2;

for($i = 1; $i <= 27; $i++)
{
	$x = $i % $_mod;
	
	if($x == 0)
	{
		$farba = "#ddd";
	}
	else
	{
		$farba = "#ffffff";
	}
	
	echo "<br /><span style='background-color:".$farba.";'>Vysledok operacie " . $i . 
	" MODULO " . $_mod . ": <b>" . $x . "</span></b>";
}



echo "<br />";

?>

<h2>UPLNA PODMIENKA</h2>

<?php

$cislo1 = -7;
$cislo2 = 3;

if($cislo1 > $cislo2)
{
	echo $cislo1 . " je > ako " . $cislo2;
}
elseif($cislo1 < $cislo2)
{
	echo $cislo1 . " je < ako " . $cislo2;
}
else
{
	echo $cislo1 . " je rovnake ako " . $cislo2;
}

?>

<hr />

<h2>PREMENNE</h2>

<?php

$cislo = 7;
$text = 'Peter ma $cislo rokov.';

echo $text;
echo "<br />";

$text = "Peter ma $cislo rokov.";

echo $text;
echo "<br />";

$text = "Peter ma " . $cislo . " rokov.";

echo $text;
echo "<br />";

?>


</body>

<!-- pripojit mysql databazu do tohto skriptu -->
wz.cz
