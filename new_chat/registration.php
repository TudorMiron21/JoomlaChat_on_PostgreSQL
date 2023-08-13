<?php
/*
Author: muhammad Abba Gana
Website: www.guidetricks.blogspot.com
*/
?>
<!DOCTYPE html>
<html>
<head>
<!--
		*******************************************************************************

		I M P O R T A N T -- N O T I C E
		- - - - - - - - -    - - - - - -

		created by MUhammad Abba Gana

		Do NOT copy and paste this code from a web browser "View Source" Window.

		The actual code contains server-side function calls which do not appear in a
		"View Source" situation even copy cannot work!!

		Please refer to the supplied templates on the product CD.
		
			for more contact me on the following details;

			email address: abbagana79@gmail.com
			phone number: +2349039016969
			website:www.Guidetricks.blogspot.com

		*******************************************************************************
	-->
<meta charset="utf-8">
<title>Registration Form</title>
<link rel="stylesheet" href="css/login.css" />
</head>
<body>
<center>
<div class="form-group">
<?php
	require('db.php');
    // If form submitted, insert values into the database.
		
    if (isset($_POST['fullname'])){
	
		$fullname = $_POST['fullname'];
		$pss = $_POST['pss'];
		$fullname = stripslashes($fullname);
		$trn_date = date("Y-m-d H:i:s");
		$pss = stripslashes($pss);
        $query = "INSERT into \"users\" (fullname, trn_date, pss) VALUES ('$fullname', '$trn_date', '$pss')"; 
        $result = pg_query($conn,$query);
        if($result){
            echo "<div class='form'><h3>You are registered successfully.</h3><br/>Click here to <a href='index.php'>Login</a></div>";
        }
    }else{
?>
<div class="form">
<h1>Registration Form</h1>
<form name="registration" action="" method="post">
<input type="fullname" name="fullname" placeholder="full name" required />
<input type="pss" name="pss" placeholder="Password" required />
<input type="submit" name="submit" value="Register" />
</form>
</div>
<?php } ?>
</body>
<br><br><br><br>
</html>