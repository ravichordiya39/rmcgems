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
				<li><a href="#">Rmc Contact Us</a></li>
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

			if(@$_POST['submit'] == 'Save'){
			 
			$rmc_contact_form = $_REQUEST['editor1'];	  
			$redirect = 'rmc-contact-page';

			if($rmc_contact_form == ''){
					
					
						$_SESSION['failed']='<div class="alert alert-danger alert-dismissable">Empty field shoud be filled<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
                          header('Location: '.$redirect);
                          exit;				
			}
				
					$res = $functions->addRmcContactForm($rmc_contact_form);
					
					if($res){

						 $_SESSION['success']='<div class="alert alert-success alert-dismissable">Data updated ! <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
                          header('Location: '.$redirect);
                          exit;
					}
				
			}
			
					$res = $functions->get('contact_sections');
			?>
			<div class="row-fluid">		
				<div class="span12">
					
					<form class=""  method="post" enctype="multipart/form-data">
						<fieldset>
                        	<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px"><strong>Rmc Contact Form section</strong></label>
							 
							   <textarea name="editor1"><?php echo $res[0]['contact_form']  ?></textarea>
       							
							</div>
							

						<div class="control-group span3">
							
								<input type="submit" class="input-xlarge btn btn-primary" name="submit" value="Save">
							</div>

						</fieldset>
					</form>
					<div class="span4"></div>
				</div>
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