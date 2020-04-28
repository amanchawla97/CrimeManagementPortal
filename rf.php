<html>
<head>
	<h1>FIR lodged successfully</h1>
</head>
</html>

<?php
    
    session_start();
    $con= mysqli_connect('localhost','root','', 'fir');

    
    $afname= ($_POST["first_name"]);
    $alname= ($_POST["last_name"]);
    $doc= ($_POST["Date_of_complaint"]);
    $gen= ($_POST["gender"]);
    $dad= ($_POST["father"]);
    $add= ($_POST["address"]);
    $mail=($_POST["email"]);
    $mob= ($_POST["phone"]);
    $acfname= ($_POST["afirst_name"]);
    $aclname= ($_POST["alast_name"]);
    $acadd= ($_POST["aaddress"]);
    $rel=($_POST["relation"]);
    $pol=($_POST["police"]);
    $sub=($_POST["subject"]);
   
   
   

    

    $s = "insert into registerfir ('first_name','last_name','Date_of_complaint','gender','father','address','email','phone','afirst_name','alast_name','aaddress','relation','police','subject') values (' $afname',' $alname','$doc','$gen','$dad','$add','$mail','$mob','$acfname','$aclname','$acadd','$rel','$pol','$sub')";
        

        mysqli_query($con, $s);
    	$con->commit();
    
?>



