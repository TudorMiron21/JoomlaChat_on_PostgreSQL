<?php
/*
Author: Muhammad Abba Gana
Website: www.guidetricks.blogspot.com
*/

// Start PHP session here
session_start();

// Include the database connection file
require('db.php');

// Process the login form if it's submitted
if (isset($_POST['fullname'])) {
    $fullname = $_POST['fullname'];
    $pss = $_POST['pss'];

    // Perform any necessary sanitization here
    // ...

    // Query the database
    $query = "SELECT * FROM \"users\" WHERE fullname='$fullname' and pss='$pss'";
    $result = pg_query($conn, $query) or die(pg_error($conn));
    $rows = pg_num_rows($result);
    $row = pg_fetch_array($result);

    if ($rows == 1) {
        $_SESSION['fullname'] = $row['fullname'];
        header("Location: choose.php");
        exit; // Make sure to exit after sending the header
    } else {
        $loginError = "Username or password is incorrect.";
    }
}

?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<link rel="stylesheet" href="css/login.css" />
</head>
<body>
<center>
<div class="form-group">
<?php if (isset($loginError)) { ?>
    <div class="form">
        <h3><?php echo $loginError; ?></h3>
        <br/>Click here to <a href="index.php">Login</a>
    </div>
<?php } else { ?>
    <div class="form">
        <h1>Log In</h1>
        <form action="" method="post" name="login">
            <input type="text" name="fullname" placeholder="Full Name" autocomplete="off" required />
            <input type="password" name="pss" placeholder="Password" required />
            <input name="submit" type="submit" value="Login" />
        </form>
        <p>Not registered yet? <a href="registration.php">Register Here</a></p>
        <p align="right">Forgot Password? Click <a href="#" onClick="MyWindow=window.open('pwordrecover.php','MyWindow','toolbar=no,location=no,directories=yes,status=yes,menubar=yes,scrollbars=yes,resizable=yes,width=300,height=250'); return false;">Here</a></span></p>
    </div>
<?php } ?>
</div>
</center>
</body>
</html>

