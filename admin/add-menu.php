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
				<li><a href="#">Add <Menus></Menus></a></li>
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
					
					
			$res = $functions->addMenus($menu_name);
					
				if($res){

						 $_SESSION['success']='<div class="alert alert-success alert-dismissable">Menu added successfully ! <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
                          header('Location: '.$redirect);
                          exit;
					}
			}

			?>
			<div class="row-fluid">		
				<div class="span12">
					
     				<h1 style="display: flex; justify-content: center">Add Menus</h1>
      
									
					
					<form class=""  method="post" enctype="multipart/form-data" style="display: flex; justify-content: center;text-align: center; margin-top: 5%">
						<fieldset>
                        	<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 20px"><strong>Menu name </strong></label>
							 	
							  <input type="text" name="menu_name" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black">
							 
							</div>
							
							<div class="control-group span12" style="margin-left: 0px;">
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
						<h2><i class="halflings-icon white user"></i><span class="break"></span> Menus List</h2>
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
				<th>Menu Name</th>
				<th>Status</th>
				<th>Action</th>
				
				
			</tr>
	    </thead>
		<?php
					$result_ar = $functions->get_order_by('menus','id','DESC');
					$i =0;
					$badge='';	
					foreach($result_ar as $result){
						if($result['status'] == 'active')
						{
							$badge='badge badge-success';	
						}
						else
						{
							$badge='badge badge-danger';	
						}
						?>
					<tr>
						<td class="center"><?= ++$i ?></td>
						<td class="center"><?= $result['name'] ?></td>
						<td class="center"><span class="<?php echo $badge; ?>"><?= $result['status'] ?></span></td>
						<td class="center">
						  
							<a class="btn btn-primary" href="edit-menu?id=<?php echo $result["id"];?>&action=edit" title="Delete">
							Edit
						    </a>
							
							<a onclick="return confirm('Are you sure you would like to Delete Image?');"  class="btn btn-danger" href="add-menu?id=<?php echo $result["id"];?>&action=Delete" title="Delete">
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

<?php

require_once("_footer.php");

?>