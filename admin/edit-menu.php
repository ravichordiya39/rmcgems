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
				<li><a href="#">Edit Menus</a></li>
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
				$id = $_REQUEST['id'];
				$res = $functions->deleteMenus($id);
				if($res){

					$_SESSION['success']  =  "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>
					<strong>SUCCESS : Menu Delete Successfully !</strong> 
					</div>";
			header('Location: add-menu');
			exit();
				}	
			}
			 ?>

			<?php 

			if(@$_POST['submit'] == 'Save'){

			$redirect = 'add-menu';

			$menu_name = $_REQUEST['menu_name'];
			$status = $_REQUEST['status'];
					
					
			$res = $functions->editMenus($_REQUEST['id'],$menu_name,$status);
					
				if($res){

						 $_SESSION['success']='<div class="alert alert-success alert-dismissable">Menu updated successfully ! <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
                          header('Location: '.$redirect);
                          exit;
					}
			}
			$res = $functions->get_where_custom('menus','id',$_REQUEST['id']);
			?>
			<div class="row-fluid">		
				<div class="span12">
					
     				<h1 style="display: flex; justify-content: center">Edit Menu</h1>
      
					<form class=""  method="post" enctype="multipart/form-data" style="display: flex; justify-content: center;text-align: center; margin-top: 5%">
						<fieldset>
                        	<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 20px"><strong>Menu name </strong></label>
							 	
							  <input type="text" name="menu_name" value="<?php echo $res[0]['name']; ?>" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black">
							 
							</div>
							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 60px"><strong>Status </strong></label>
							 	
							<select name="status" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black" > 
								<option value="active" <?php if($res[0]['status']=='active') {  echo "SELECTED";  } ?> >Active</option>
								<option value="deactive" <?php if($res[0]['status']=='deactive') {  echo "SELECTED";  } ?>  >Deactive</option>
								</select>	
							 
							 
							</div>
							
							<div class="control-group span6" style="margin-left: 0px;">
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