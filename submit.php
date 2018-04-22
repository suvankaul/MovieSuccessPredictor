<style>
body {background-image: url("bgg1.jpg");
		background-repeat: no-repeat;
	background-size: 1500px 900px;
	font-size: 50px;}
</style>
<body>
<?php
//connect to MySQL DBMS
//$hostname="localhost";
//$username="root";
//$password="";
$conn=mysql_connect("localhost","root","");
//echo "Connected to MySQL<br>";
//select database
$db=mysql_select_db("movie",$conn);

//Taking user input from form
$d=$_POST['director_name'];
$a1=$_POST['actor_1_name'];
$a2=$_POST['actor_2_name'];
$g=$_POST['genres'];
$c=$_POST['country'];

/*echo $d."<br>";
echo $a1."<br>";
echo $a2."<br>";
echo $g."<br>";
echo $c."<br>";*/


//Calculation of yes and no probabilities.
$query_t ="SELECT count(*) from movie";
$query_h ="SELECT count(*) from movie as h where hitFlop like 'hit'";
$query_f ="SELECT count(*) from movie as f where hitFlop like 'flop'";

$result_t = mysql_query($query_t,$conn);
$result_h = mysql_query($query_h,$conn);
$result_f = mysql_query($query_f,$conn);

$t=mysql_result($result_t,0);
$h=mysql_result($result_h,0);
$f=mysql_result($result_f,0);
/*echo $t."<br>";
echo $h."<br>";
echo $f."<br>";*/

//1.Calculation of Color=c and hitFlop = y and Color=c and hitFlop=n
$query_dy="SELECT count(*) from movie where director_name='" . $d . "' and hitFlop like 'hit'";
$query_dn="SELECT count(*) from movie where director_name='" . $d . "' and hitFlop like 'flop'";
$result_dy = mysql_query($query_dy,$conn);
$result_dn = mysql_query($query_dn,$conn);

$dy=mysql_result($result_dy,0);
$dn=mysql_result($result_dn,0);
// echo $dy."<br>";
// echo $dn."<br>";

//2.Calculation of Model=m and hitFlop = y and Model=m and hitFlop=n
$query_a1y="SELECT count(*) from movie where actor_1_name='" . $a1 . "' and hitFlop like 'hit'";
$query_a1n="SELECT count(*) from movie where actor_1_name='" . $a1 . "' and hitFlop like 'flop'";
$result_a1y = mysql_query($query_a1y,$conn);
$result_a1n = mysql_query($query_a1n,$conn);

$a1y=mysql_result($result_a1y,0);
$a1n=mysql_result($result_a1n,0);
// echo $a1y."<br>";
// echo $a1n."<br>";


//3.Calculation of Origin=o and hitFlop = y and Origin=o and hitFlop=n
$query_a2y="SELECT count(*) from movie where actor_2_name='" . $a2 . "' and hitFlop like 'hit'";
$query_a2n="SELECT count(*) from movie where actor_2_name='" . $a2 . "' and hitFlop like 'flop'";
$result_a2y = mysql_query($query_a2y,$conn);
$result_a2n = mysql_query($query_a2n,$conn);

$a2y=mysql_result($result_a2y,0);
$a2n=mysql_result($result_a2n,0);
// echo $a2y."<br>";
// echo $a2n."<br>";


//4.Calculation of Origin=o and hitFlop = y and Origin=o and hitFlop=n
$query_cy="SELECT count(*) from movie where country='" . $c . "' and hitFlop like 'hit'";
$query_cn="SELECT count(*) from movie where country='" . $c . "' and hitFlop like 'flop'";
$result_cy = mysql_query($query_cy,$conn);
$result_cn = mysql_query($query_cn,$conn);

$cy=mysql_result($result_cy,0);
$cn=mysql_result($result_cn,0);
/*echo $oy."<br>";
echo $on."<br>";*/


//5.Calculation of Origin=o and hitFlop = y and Origin=o and hitFlop=n

$query_gy="SELECT count(*) from movie where genres='" . $g . "' and hitFlop like 'hit'";
$query_gn="SELECT count(*) from movie where genres='" . $g . "' and hitFlop like 'flop'";
$result_gy = mysql_query($query_gy,$conn);
$result_gn = mysql_query($query_gn,$conn);

$gy=mysql_result($result_gy,0);
$gn=mysql_result($result_gn,0);
/*echo $oy."<br>";
echo $on."<br>";*/

//Calculation of Probabilities
$pxy=($cy/$h)*($dy/$h)*($a1y/$h)*($a2y/$h)*($gy/$h);
$pxn=($cn/$f)*($dn/$f)*($a1n/$f)*($a2n/$f)*($gn/$f);
$py=$pxy*($h/$t);
$pn=$pxn*($f/$t);
/*echo $py."<br>";
echo $pn."<br>";*/

//Result
if ($py>$pn) {?>
<h1><center>

<?php	
echo "The movie will be Hit.";
} else {
	echo "The movie will be Flop.";
}
?>
</center></h1>
</body>
<?php


//close connection
mysql_close($conn);
?>