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
			
			$title = $_REQUEST['title'];	
			$address = $_REQUEST['address'];	
			$phone = $_REQUEST['phone'];
			$email = $_REQUEST['email'];
			$website = $_REQUEST['website'];
				
				
				
			$fax = $_REQUEST['fax'];	
			$image = $_FILES['image']['name'];
			
			$redirect = 'rmc-contact-us';

			if($title == ''){
					
					
						$_SESSION['failed']='<div class="alert alert-danger alert-dismissable">Title cant be empty<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
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
				
					$res = $functions->addRmcContact($title,$address,$phone,$fax,$email,$website,$image);
					
					if($res){

						 $_SESSION['success']='<div class="alert alert-success alert-dismissable">Contact added successfully ! <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
                          header('Location: '.$redirect);
                          exit;
					}
				}
			}
						
					$res = $functions->get('home_sections');
			?>
						
			<div class="row-fluid">		
				<div class="span12">
					
					<form class=""  method="post" enctype="multipart/form-data">
						<fieldset>
                        	<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px; "><strong>Rmc Contact us</strong></label>
							 
							</div>
							
							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 40px"><strong>Title</strong></label>
							 
							  <input type="text" name="title" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>

							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 15px"><strong>Address</strong></label>
							 
							  <input type="text" name="address" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>
							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 27px"><strong>Phone</strong></label>
							 
							  <input type="text" name="phone" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>
							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 47px"><strong>Fax</strong></label>
							 
							  <input type="text" name="fax" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>
							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 34px"><strong>Email</strong></label>
							 
							  <input type="email" name="email" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>
							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 18px"><strong>Website</strong></label>
							 
							  <input type="text" name="website" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>
							
							
                         	<div class="control-group span12" style="margin-left: 0px;display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px;margin-right: 20px"><strong>Upload Image</strong></label>
							 
							  <input type="file" name="image" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;border-radius: 10px">
							  
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
			
			<div class="row-fluid">		
             <div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span> Banner Image History</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content" style="overflow-y: auto;z-index: 0;">
					<div style="clear: both"></div>
					<table class="table table-striped table-bordered bootstrap-datatable datatable">
					<thead>
			<tr>
				<th>S.NO.</th>
				<th>Title</th>
				<th>Image</th>
				<th>Address</th>
				<th>Phone</th>
				<th>Fax</th>
				
				
				<th>Action</th>
				
				
			</tr>
	    </thead>
		<?php
					$result_ar = $functions->get_order_by('rmc_contact','id','DESC');
					$i =0;
					foreach($result_ar as $result){
						
						?>
					<tr>
						<td class="center"><?= ++$i ?></td>
						<td class="center"><?= $result['contact_title'] ?></td>
						<td class="center"><a href="image/rmc-contact/<?= $result['contact_image'] ?>" target="_blank"><img src="image/rmc-contact/<?= $result['contact_image'] ?>" style="width: 200px;height:200px"></a></td>
						<td class="center"><?= $result['contact_address'] ?></td>
						<td class="center"><?= $result['contact_phone'] ?></td>
						<td class="center"><?=   strip_tags($result['contact_fax']);   ?></td>
						<td class="center">
						  
						<a  class="btn btn-primary" href="edit-rmc-contact-us?id=<?php echo $result["id"];?>&action=Edit" title="Delete">
							Edit 
						  </a>
							<a onclick="return confirm('Are you sure you would like to Delete Image?');"  class="btn btn-danger" href="rmc-contact-us?id=<?php echo $result["id"];?>&action=Delete" title="Delete">
							Delete 
						  </a>
						</td>
					</tr>	
					<?php } ?>
					</table>
				</div>
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