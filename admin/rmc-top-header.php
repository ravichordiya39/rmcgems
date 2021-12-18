<?php
require_once("_header.php");
  $functions->admin_acty('users page visited');

?>
<div class="container-fluid-full">
	<div class="row-fluid">
		<?php require_once("_sidebar.php"); ?>
			<!-- start: Content -->
		<div id="content" class="span10">
            <ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>

					<a href="dashboard.php">Home</a> 

					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">Rmc Top Header</a></li>
			</ul>
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
			<?php 

			if(@$_GET['action']=='Delete'){
				$id = $_GET['id'];
				$res = $functions->rmcContactDelete($id);
				if($res){

					$_SESSION['success']  =  "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>
					<strong>SUCCESS : Contact Deleted Successfully !</strong> 
					</div>";
			header('Location: rmc-contact-us');
			exit();
				}	
			}
			 ?>

			<?php 

			if(@$_POST['submit'] == 'Save'){
			
			$contact = $_REQUEST['contact'];	
			$email = $_REQUEST['email'];	
			$fb = $_REQUEST['fb'];
			$instagram = $_REQUEST['instagram'];
			$pinterest = $_REQUEST['pinterest'];
			$twitter = $_REQUEST['twitter'];
			$youtube = $_REQUEST['youtube'];
				
				
			$redirect = 'rmc-top-header';

			if($contact == ''){
					
					
						$_SESSION['failed']='<div class="alert alert-danger alert-dismissable">Contact cant be empty<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
                          header('Location: '.$redirect);
                          exit;				
			}	
				

			
					
					$res = $functions->addRmcTopHeader($contact,$email,$fb,$instagram,$pinterest,$twitter,$youtube);
					
					if($res){

						 $_SESSION['success']='<div class="alert alert-success alert-dismissable">Heder details added successfully ! <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
                          header('Location: '.$redirect);
                          exit;
					}
				
			}
						
					$res = $functions->get('top_header');
			?>
						
			<div class="row-fluid">		
				<div class="span12">
					
					<form class=""  method="post" enctype="multipart/form-data">
						<fieldset>
                        	<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px; "><strong>Rmc Top Header</strong></label>
							 
							</div>
							
							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 15px"><strong>Contact No.</strong></label>
							 
							  <input type="text" name="contact" value="<?php echo $res[0]['contact']; ?>" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>
							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 60px"><strong>Email</strong></label>
							 
							  <input type="email" name="email" value="<?php echo $res[0]['email']; ?>" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>
							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 32px"><strong>Facebook</strong></label>
							 
							  <input type="text" name="fb" required="" value="<?php echo $res[0]['fb']; ?>" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>
							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 27px"><strong>Instagram</strong></label>
							 
							  <input type="text" name="instagram" required="" value="<?php echo $res[0]['instagram']; ?>" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>
							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 35px"><strong>Pinterest</strong></label>
							 
							  <input type="text" name="pinterest" required="" value="<?php echo $res[0]['pinterest']; ?>" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>
							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 47px"><strong>Twitter</strong></label>
							 
							  <input type="text" name="twitter" required="" value="<?php echo $res[0]['twitter']; ?>" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>
							
							
							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 40px"><strong>Youtube </strong></label>
							 
							  <input type="text" name="youtube" required="" value="<?php echo $res[0]['youtube']; ?>" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>
							
							<div class="control-group span3">
							  <br>
								<input type="submit" class="input-xlarge btn btn-primary" name="submit" value="Save">
							</div>

						</fieldset>
					</form> 
       							
							</div>
							

					<div class="span4"></div>
				</div>
			
			
			
			</div>
			
		</div><!--/.fluid-container-->
		<!-- end: Content -->
	</div><!--/#content.span10-->


</div>
 <script>
    CKEDITOR.replace( 'editor1' );
 </script>

<?php

require_once("_footer.php");

?>