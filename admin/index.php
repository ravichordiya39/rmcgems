<?php
ob_start();
session_start();
require_once("functions/functions.php");
$functions->admin_url(); 
$status="";

if (@$_GET['st'] != 'rest') {
  die('not allowed');
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">


<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Admin dashboard</title>

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/bootstrap-responsive.min.css" rel="stylesheet">

<link href="css/style.css" rel="stylesheet">

<link href="css/style-responsive.css" rel="stylesheet">

<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>

<style type="text/css">

body { background: url(image/login-bg/bg-login.jpg) !important; }
.login-box input[type="text"],

.login-box input[type="password"] {

	border: 1px solid #000 !important;

	color: #000;

	

}
</style>

<div class="container-fluid-full">

<div class="row-fluid">

  <div class="row-fluid">
  
	<div style="margin:200px auto 100px auto; justify-content: center; display: flex"><img src="image/logo/logo.png" style="width: 160px; height: 66px"></div>
    <div class="login-box">

      <div class="icons"> <a href="index.html"><i class="halflings-icon home"></i></a> <a href="#"><i class="halflings-icon cog"></i></a></div>

<?php if($status != ""){ ?>
	<?php echo $status; ?>
		<?php 
					} ?>
					<?php
            if (@$_POST['enter'] = 'Login' AND @$_POST['password'] != "") {
          
              $username = trim($_POST['username']);
              $password = trim($_POST['password']);
              if ($username == "" || $password == "") {
                $_SESSION['failed'] ="<div class='alert alert-error'>
                    <button type='button' class='close' data-dismiss='alert'>×</button>
                    <strong>ERROR fill all details </strong> 
                    </div>";
                  header('Location: index?st=asdqwemn');
                  exit;
              }else{
                $functions->admin_url_submit(); 
                $functions->admin_login($username,$password);

              }
            }

            ?>
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
 <form class="form-horizontal" method="post">
	
	
        <fieldset>
        <div class="input-prepend" title="Username"> <span class="add-on"><i class="fa fa-user" style="color: grey"></i></span>

          <input class="input-large span10" name="username" id="username" type="text" placeholder="Type username"/>

        </div>

        <div class="clearfix"></div>

        <div class="input-prepend" title="Password"> <span class="add-on"><i class="fa fa-eye" style="color: grey"></i></span>

          <input class="input-large span10" name="password" id="password" type="password" placeholder="Type password"/>

        </div>

        <div class="clearfix"></div>


        <center>  <input class="btn" name="enter" id="password" type="submit" value="Login" /> </center>

        </div>

        <div class="clearfix"></div>

      </form>

    </div>

    <!--/span--> 

  </div>

  <!--/row--> 

  

</div>
<!--/.fluid-container-->
<style>
	.add-on i
	{
		opacity: 1 !important;
	}
	.login-box 
	{
		margin: 0px auto;
	}
	</style>
<?php

require_once("_footer.php");

?>