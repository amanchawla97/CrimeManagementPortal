<html>
<head>
<title> Under Construction </title>
</head>
</html>

<?php
    
    session_start();
    $con= mysqli_connect('localhost','root','', 'fir');

    #mysqli_select_db($con,'demo');
    $uname= isset($_POST["username"])?$_POST["username"]:null;
    $mail= isset($_POST["email"])?$_POST["email"]:null;
    $pwd = isset($_POST["password"])?$_POST["password"]:null;
    $eeee=md5($mail);
	$pppp=md5($pwd);
 

    $cpwd= isset($_POST["cpassword"])?$_POST["cpassword"]:null;

    // echo $mail;
   // echo $pwd;

    //echo $cpwd;



    $sql = "select * from signup where email = '$mail'";
    //echo $sql;
    $res = mysqli_query($con,$sql);

    $count = mysqli_num_rows($res);
    //echo $count;

    if($count==1 )
    {
        echo"user name already taken ";
    }
    else
    {
        $s = "insert into signup (username,email,password) values ('$uname','$eeee','$pppp')";
        

        mysqli_query($con, $s);
    	$con->commit();

        echo "<script>location.href = 'uc/ucf/index.html';</script>";
    }
?>