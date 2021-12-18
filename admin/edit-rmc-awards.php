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
				<li><a href="#">Rmc Awards and Certifications</a></li>
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
				$res = $functions->rmcAwardsDelete($id);
				if($res){

					$_SESSION['success']  =  "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>
					<strong>SUCCESS : Award Deleted Successfully !</strong> 
					</div>";
			header('Location: rmc-awards');
			exit();
				}	
			}
			 ?>

			<?php 

			if(@$_POST['submit'] == 'Save'){
			
			$award_title = $_REQUEST['award_title'];	
			$product_description = $_REQUEST['editor1'];	
			$product_image = $_FILES['image']['name'];
			
			$redirect = 'edit-rmc-awards?id='.$_REQUEST["id"];

			if($award_title == ''){
					
					
						$_SESSION['failed']='<div class="alert alert-danger alert-dismissable">Product name cant be empty<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
                          header('Location: '.$redirect);
                          exit;				
			}	
				

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
				
					$res = $functions->updateRmcAwards($award_title,$product_image,$product_description,$_REQUEST['id']);
					
					if($res){

						 $_SESSION['success']='<div class="alert alert-success alert-dismissable">Award added successfully ! <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
                          header('Location: '.$redirect);
                          exit;
					}
				}
			}
						
					$res = $functions->get_where_custom('rmc_awards','id',$_REQUEST['id']);
				//	print_r($res);
			?>
						
			<div class="row-fluid">		
				<div class="span12">
					
					<form class=""  method="post" enctype="multipart/form-data">
						<fieldset>
                        	<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px; "><strong>Rmc  Awards and Certifications</strong></label>
							 
							</div>
							
							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 40px"><strong>Awards Title</strong></label>
							 
							  <input type="text" name="award_title" value="<?php  echo $res[0]['award_title']; ?>" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>

							
							
                         	<div class="control-group span12" style="margin-left: 0px;display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px;margin-right: 30px"><strong>Upload Image</strong></label>
							 
							  <input type="file" name="image" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;border-radius: 10px">
							  
							</div>
							<div class="control-group span12" style="margin-left: 0px;display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px;margin-right: 40px"><strong>Award Image</strong></label>
							 
							  <img src=" <?php echo "image/rmc-awards/".$res[0]['award_image']; ?> ">
							  
							</div>
							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px;margin-right: 95px"><strong>Year</strong></label>
							 
							  <input type="text" name="editor1" value="<?php  echo $res[0]['year']; ?>" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
       							
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
 

<?php

require_once("_footer.php");

?>