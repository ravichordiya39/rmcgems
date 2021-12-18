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
				<li><a href="#">Rmc Company Page</a></li>
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

			if(@$_REQUEST['action']=='remove'){
				$res = $functions->rmcCompanySecondSectionRemoveCotent($id);
				if($res){

					$_SESSION['success']  =  "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>
					<strong>SUCCESS : Content Deleted Successfully !</strong> 
					</div>";
			header('Location: rmc-company-page');
			exit();
				}	
			}
			
			if(@$_REQUEST['action']=='remove1'){
				$res = $functions->rmcCompanyThirdSectionRemoveCotent($id);
				if($res){

					$_SESSION['success']  =  "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>
					<strong>SUCCESS : Content Deleted Successfully !</strong> 
					</div>";
			header('Location: rmc-company-page');
			exit();
				}	
			}
			if(@$_REQUEST['action']=='remove2'){
				$res = $functions->rmcCompanyFourthSectionRemoveCotent($id);
				if($res){

					$_SESSION['success']  =  "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>
					<strong>SUCCESS : Content Deleted Successfully !</strong> 
					</div>";
			header('Location: rmc-company-page');
			exit();
				}	
			}
			if(@$_REQUEST['action']=='remove3'){
				$res = $functions->rmcCompanyFifthSectionRemoveCotent($id);
				if($res){

					$_SESSION['success']  =  "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>
					<strong>SUCCESS : Content Deleted Successfully !</strong> 
					</div>";
			header('Location: rmc-company-page');
			exit();
				}	
			}
			if(@$_REQUEST['action']=='remove4'){
				$res = $functions->rmcCompanySixthSectionRemoveCotent($id);
				if($res){

					$_SESSION['success']  =  "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>
					<strong>SUCCESS : Content Deleted Successfully !</strong> 
					</div>";
			header('Location: rmc-company-page');
			exit();
				}	
			}
			 ?>

			<?php 

			if(@$_POST['submit'] == 'Save'){
				
			$below_content = $_REQUEST['editor1'];	
			$image = $_FILES['image']['name'];
			
			$redirect = 'rmc-company-page';

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
				
					$res = $functions->addCompanyFirstSection($below_content,$image);
					
					if($res){

						 $_SESSION['success']='<div class="alert alert-success alert-dismissable">Data added successfully ! <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
                          header('Location: '.$redirect);
                          exit;
					}
				}
			}
				
			
			if(@$_POST['submit'] == 'Upload'){
				
				$content = $_REQUEST['editor2'];		
				$image = $_FILES['image']['name'];

				$redirect = 'rmc-company-page';

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

						$res = $functions->addCompanySecondSection($content,$image);

						if($res){

							 $_SESSION['success']='<div class="alert alert-success alert-dismissable">Section added successfully ! <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
							  header('Location: '.$redirect);
							  exit;
						}
					}
			}
			
			if(@$_POST['submit'] == 'Upload1'){
				
				$content = $_REQUEST['editor3'];		
				$image = $_FILES['image']['name'];

				$redirect = 'rmc-company-page';

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

						$res = $functions->addCompanyThirdSection($content,$image);

						if($res){

							 $_SESSION['success']='<div class="alert alert-success alert-dismissable">Section added successfully ! <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
							  header('Location: '.$redirect);
							  exit;
						}
					}
			}
			if(@$_POST['submit'] == 'Upload2'){
				
				$content = $_REQUEST['editor4'];		
				$image = $_FILES['image']['name'];

				$redirect = 'rmc-company-page';

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

						$res = $functions->addCompanyFourthSection($content,$image);

						if($res){

							 $_SESSION['success']='<div class="alert alert-success alert-dismissable">Section added successfully ! <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
							  header('Location: '.$redirect);
							  exit;
						}
					}
			}
			
			if(@$_POST['submit'] == 'Upload3'){
				
				$content = $_REQUEST['editor5'];		
				$image = $_FILES['image']['name'];

				$redirect = 'rmc-company-page';

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

						$res = $functions->addCompanyFifthSection($content,$image);

						if($res){

							 $_SESSION['success']='<div class="alert alert-success alert-dismissable">Section added successfully ! <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
							  header('Location: '.$redirect);
							  exit;
						}
					}
			}
			if(@$_POST['submit'] == 'Upload4'){
				
				$content = $_REQUEST['editor6'];		
				$image = $_FILES['image']['name'];

				$redirect = 'rmc-company-page';

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

						$res = $functions->addCompanySixthSection($content,$image);

						if($res){

							 $_SESSION['success']='<div class="alert alert-success alert-dismissable">Section added successfully ! <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
							  header('Location: '.$redirect);
							  exit;
						}
					}
			}
			
					$res = $functions->get('company_sections');
			?>
						
			<div class="row-fluid">		
				<div class="span12">
					
					<form class=""  method="post" enctype="multipart/form-data">
						<fieldset>
                        	<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px; "><strong>Rmc Company Banner Section</strong></label>
							 
							</div>
							
                         	<div class="control-group span12" style="margin-left: 0px;display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px;margin-right: 20px"><strong>Upload Banner Image</strong></label>
							 
							  <input type="file" name="image" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;border-radius: 10px">
							  
							</div>
							
							<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px"><strong>Below Content</strong></label>
							 
							   <textarea name="editor1"><?php echo $res[0]['below_content'];  ?></textarea>
       							
							</div>

							<div class="control-group span3">
							  <br>
								<input type="submit" class="input-xlarge btn btn-primary" name="submit" value="Save">
							</div>

						</fieldset>
					</form> 
					
					
					<form class=""  method="post" enctype="multipart/form-data">
						<fieldset>
							<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px; "><strong>Rmc Company Second Section</strong></label>
							 
							</div>
							
                        	
                         	<div class="control-group span12" style="margin-left: 0px;display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px;margin-right: 20px"><strong>Upload Image</strong></label>
							 
							  <input type="file" name="image" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;border-radius: 10px">
							  
							</div>
							<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px"><strong>Below Content</strong></label>
							 
							   <textarea name="editor2"><?php echo $res[0]['second_section_content'];  ?></textarea>
       							
							</div>

							<div class="control-group span3">
							  <br>
								<input type="submit" class="input-xlarge btn btn-primary" name="submit" value="Upload">
								<a href="?action=remove" class=" btn btn-danger">Remove Content</a>
							</div>

						</fieldset>
					</form> 
       						
					<form class=""  method="post" enctype="multipart/form-data">
						<fieldset>
							<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px; "><strong>Rmc Company Third Section</strong></label>
							 
							</div>
							
                        	
                         	<div class="control-group span12" style="margin-left: 0px;display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px;margin-right: 20px"><strong>Upload Image</strong></label>
							 
							  <input type="file" name="image" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;border-radius: 10px">
							  
							</div>
							<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px"><strong>Below Content</strong></label>
							 
							   <textarea name="editor3"><?php echo $res[0]['third_section_content'];  ?></textarea>
       							
							</div>

							<div class="control-group span3">
							  <br>
								<input type="submit" class="input-xlarge btn btn-primary" name="submit" value="Upload1">
								<a href="?action=remove1" class=" btn btn-danger">Remove Content</a>
							</div>

						</fieldset>
					</form> 
					
					<form class=""  method="post" enctype="multipart/form-data">
						<fieldset>
							<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px; "><strong>Rmc Company Fourth Section</strong></label>
							 
							</div>
							
                        	
                         	<div class="control-group span12" style="margin-left: 0px;display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px;margin-right: 20px"><strong>Upload Image</strong></label>
							 
							  <input type="file" name="image" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;border-radius: 10px">
							  
							</div>
							<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px"><strong>Below Content</strong></label>
							 
							   <textarea name="editor4"><?php echo $res[0]['fourth_section_content'];  ?></textarea>
       							
							</div>

							<div class="control-group span3">
							  <br>
								<input type="submit" class="input-xlarge btn btn-primary" name="submit" value="Upload2">
								<a href="?action=remove2" class=" btn btn-danger">Remove Content</a>
							</div>

						</fieldset>
					</form> 
					
					<form class=""  method="post" enctype="multipart/form-data">
						<fieldset>
							<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px; "><strong>Rmc Company Fifth Section</strong></label>
							 
							</div>
							
                        	
                         	<div class="control-group span12" style="margin-left: 0px;display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px;margin-right: 20px"><strong>Upload Image</strong></label>
							 
							  <input type="file" name="image" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;border-radius: 10px">
							  
							</div>
							<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px"><strong>Below Content</strong></label>
							 
							   <textarea name="editor5"><?php echo $res[0]['fifth_section_content'];  ?></textarea>
       							
							</div>

							<div class="control-group span3">
							  <br>
								<input type="submit" class="input-xlarge btn btn-primary" name="submit" value="Upload3">
								<a href="?action=remove3" class=" btn btn-danger">Remove Content</a>
							</div>

						</fieldset>
					</form> 
					
					<form class=""  method="post" enctype="multipart/form-data">
						<fieldset>
							<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px; "><strong>Rmc Company Sixth Section</strong></label>
							 
							</div>
							
                        	
                         	<div class="control-group span12" style="margin-left: 0px;display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px;margin-right: 20px"><strong>Upload Image</strong></label>
							 
							  <input type="file" name="image" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;border-radius: 10px">
							  
							</div>
							<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px"><strong>Below Content</strong></label>
							 
							   <textarea name="editor6"><?php echo $res[0]['sixth_section_content'];  ?></textarea>
       							
							</div>

							<div class="control-group span3">
							  <br>
								<input type="submit" class="input-xlarge btn btn-primary" name="submit" value="Upload4">
								<a href="?action=remove4" class=" btn btn-danger">Remove Content</a>
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
<script>
    CKEDITOR.replace( 'editor2' );
 </script>
<script>
    CKEDITOR.replace( 'editor3' );
 </script>
<script>
    CKEDITOR.replace( 'editor4' );
 </script>
<script>
    CKEDITOR.replace( 'editor5' );
 </script>
<script>
    CKEDITOR.replace( 'editor6' );
 </script>
<?php

require_once("_footer.php");

?>