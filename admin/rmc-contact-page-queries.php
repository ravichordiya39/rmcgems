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
				<li><a href="#">Contact Queries</a></li>
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

			

			?>
			
				
			<div class="row-fluid">		
             <div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span> Contact Queries</h2>
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
				<th>Name</th>
				<th>Email</th>
				<th>Contact</th>
				<th>Subject</th>
				<th>Message</th>
				
			
				
				
			</tr>
	    </thead>
		<?php
					$result_ar = $functions->get_order_by('contact_queries','id','DESC');
					$i =0;
					$badge='';	
					foreach($result_ar as $result){
						
						?>
					<tr>
						<td class="center"><?= ++$i ?></td>
						<td class="center"><?= $result['name'] ?></td>
						<td class="center"><?= $result['email'] ?></td>
						<td class="center"><?= $result['contact'] ?></td>
						<td class="center"><?= $result['subject'] ?></td>
						<td class="center"><?= $result['message'] ?></td>
						
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