<?php
session_start();
ob_start();

require_once("functions/functions.php"); 
$functions->admin_otp_page();
$status="";

if(@$_SESSION['login_otp'] == ""){

  header('Location:index');
  die();
}
/*if(@$_SESSION['login_otp'] != ""){

  header('Location:logout');
  die();
}*/

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">


<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Admin Panel</title>

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/bootstrap-responsive.min.css" rel="stylesheet">

<link href="css/style.css" rel="stylesheet">

<link href="css/style-responsive.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>

</head>

<body>

<style type="text/css">

body { background: url(img/bg-login.jpg) !important; }

</style>

<div class="container-fluid-full">

<div class="row-fluid">

  <div class="row-fluid">

<?php

  $login_otp = $_SESSION['login_otp'];

if(@$_POST['submit']){
  
  
  $enter_otp = trim($_POST['otp']);

  if($enter_otp == ""){

    $_SESSION['failed'] = "<div class='alert alert-error'>
          <button type='button' class='close' data-dismiss='alert'>×</button>
          <strong>ERROR : Required field cannot be empty</strong> 
          </div>";
          header('Location:index?st=st=asdqwemn');
          exit();

  }elseif($enter_otp != $login_otp){

    $_SESSION['failed'] = "<div class='alert alert-error'>
          <button type='button' class='close' data-dismiss='alert'>×</button>
          <strong>ERROR : OTP does not match</strong> 
          </div>";
          header('Location:verify_otp');
          exit();

  }else{
    $functions->admin_otp_submit();
  $status = $functions->admin_verify_otp($enter_otp);

  }
}

?>
  
    <div class="login-box">

      <div class="icons"> <a href="index.html"><i class="halflings-icon home"></i></a> <a href="#"><i class="halflings-icon cog"></i></a></div>

					
        <form class="form-horizontal" method="post" action="">
        <fieldset>
            <?php 
              if(@$_SESSION['success']){
                  echo $_SESSION['success'];
                  unset($_SESSION['success']);
                }
                if(@$_SESSION['failed']){
                  echo $_SESSION['failed'];
                  unset($_SESSION['failed']);
                }
        
              ?>
        
        <div class="input-prepend" title="Verify OTP"> <span class="add-on"><i class="halflings-icon user"></i>
        </span>
          <input class="input-large span10" name="otp" id="username" type="text" placeholder="Enter verify otp" required="" />

        </div>

        <div class="clearfix"></div>

        <div class="button-login">

          <input type="submit" class="btn btn-primary" name="submit" value="Submit">

        </div>

        <div class="clearfix"></div>

      </form>

    </div>

    <!--/span--> 

  </div>

  <!--/row--> 

  

</div>

<!--/.fluid-container-->

<?php

require_once("_footer.php");

ob_end_flush();

?>

