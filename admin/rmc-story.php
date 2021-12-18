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
				<li><a href="#">Rmc Story</a></li>
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

			if(@$_POST['submit'] == 'Upload'){

			$redirect = 'rmc-story';

			if($_FILES['image']['name'] != ""){
					
					if($_FILES['image']['error'] > 0){

						$_SESSION['failed']='<div class="alert alert-danger alert-dismissable">Error Opening in Image<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
                          header('Location: '.$redirect);
                          exit;

					}
				
					$allowed = array('jpeg','jpg','png');
					$name = $_FILES['image']['name'];
					$ext = pathinfo($name,PATHINFO_EXTENSION);

					if(!in_array($ext, $allowed)){
						$_SESSION['failed']='<div class="alert alert-danger alert-dismissable">Image must be in jpg,png,jpeg format<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
					  header('Location: '.$redirect);
					  exit;
					  }
				
					$res = $functions->addRmcStoryRightImage();
					
					if($res){

						 $_SESSION['success']='<div class="alert alert-success alert-dismissable">Image uploaded successfully ! <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
                          header('Location: '.$redirect);
                          exit;
					}
				}
			}
			
			
			if(@$_POST['submit'] == 'Save'){
			 
			$rmc_story_left = $_REQUEST['editor1'];	  
			$redirect = 'rmc-story';

			if($rmc_story_left == ''){
					
					
						$_SESSION['failed']='<div class="alert alert-danger alert-dismissable">Empty field shoud be filled<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
                          header('Location: '.$redirect);
                          exit;				
			}
				
					$res = $functions->addRmcStoryLeft($rmc_story_left);
					
					if($res){

						 $_SESSION['success']='<div class="alert alert-success alert-dismissable">Data updated ! <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
                          header('Location: '.$redirect);
                          exit;
					}
				
			}
			
					$res = $functions->get('home_sections');
			?>
			<div class="row-fluid">		
				<div class="span12">
					
					<form class=""  method="post" enctype="multipart/form-data">
						<fieldset>
                        	<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px"><strong>Rmc Story left section</strong></label>
							 
							   <textarea name="editor1"><?php echo $res[0]['rmc_story_left']  ?></textarea>
       							
							</div>
							

						<div class="control-group span3">
							
								<input type="submit" class="input-xlarge btn btn-primary" name="submit" value="Save">
							</div>

						</fieldset>
					</form>
					<div class="span4"></div>
				</div>
			</div>
			
			<div class="row-fluid">		
				<div class="span12">
					
					<form class=""  method="post" enctype="multipart/form-data">
						<fieldset>
                        	<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px"><strong>Rmc Story right section</strong></label>
							 
							  

                         	<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px"><strong>Upload Image</strong></label>
							 
							  <input type="file" name="image" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;border-radius: 10px">
							  <div style="font-size:10px">Image dimension : 1000X909</div>	
							</div>

							<div class="control-group span3">
							  <br>
								<input type="submit" class="input-xlarge btn btn-primary" name="submit" value="Upload">
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