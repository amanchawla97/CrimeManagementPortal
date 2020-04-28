<?php
    
    session_start();
    $con= mysqli_connect('localhost','root','', 'fir');

    
    $afname= isset($_POST["first_name"])?$_POST["first_name"]:null;
    $alname= isset($_POST["last_name"])?$_POST["last_name"]:null;
    $doc= isset($_POST["Date_of_complaint"])?$_POST["Date_of_complaint"]:null;
    $gen= isset($_POST["gender"])?$_POST["gender"]:null;
    $dad= isset($_POST["father"])?$_POST["father"]:null;
    $add= isset($_POST["address"])?$_POST["address"]:null;
    $mail= isset($_POST["email"])?$_POST["email"]:null;
    $mob= isset($_POST["phone"])?$_POST["phone"]:null;
    $acfname= isset($_POST["afirst_name"])?$_POST["afirst_name"]:null;
    $aclname= isset($_POST["alast_name"])?$_POST["alast_name"]:null;
    $acadd= isset($_POST["aaddress"])?$_POST["aaddress"]:null;
    $rel= isset($_POST["relation"])?$_POST["relation"]:null;
    $pol= isset($_POST["police"])?$_POST["police"]:null;
    $sub= isset($_POST["subject"])?$_POST["subject"]:null;
    $sql = "select * from signup where email = '$mail'";

    if ($gen == 0)
    {
        $gen = 'Female';
    }

    if ($gen == 1)
    {
        $gen = "Male";
    }

    $s = "insert into registerfir (first_name, last_name, Date_of_complaint, gender, father, address, email, phone, afirst_name, alast_name, aaddress, relation, police, subject) values ('$afname','$alname','$doc','$gen','$dad','$add','$mail','$mob','$acfname','$aclname','$acadd','$rel','$pol','$sub')";
        
    /*$query = "insert into registerfir (first_name, last_name, Date_of_complaint, gender, father, address, email, phone, afirst_name, alast_name, aaddress, relation, police, subject) values ('".$afname."','".$alname."','".$doc."','".$gen."','".$dad."','".$add."','".$mail."','".$mob."','".$acfname."','".
        $aclname."','".$acadd."','".$rel."','".$pol."','".$sub."')";

    echo $query;|*/
    
    try
    {
            mysqli_query($con, $s);
    }
    
    catch (Exception $e)
    {
            echo 'Caught exception: ',  $e->getMessage(), "\n";
    }
    
    $con->commit();

    echo "<script>alert('FIR lodged successfully');</script>";
    echo "<script>location.href = 'http://www.google.com';</script>";
?>



