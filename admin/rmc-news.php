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
				<li><a href="#">Rmc News and Events</a></li>
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
				$res = $functions->rmcNewsDelete($id);
				if($res){

					$_SESSION['success']  =  "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>×</button>
					<strong>SUCCESS : News Deleted Successfully !</strong> 
					</div>";
			header('Location: rmc-news');
			exit();
				}	
			}
			 ?>

			<?php 

			if(@$_POST['submit'] == 'Save'){
			
			$news_title = $_REQUEST['news_title'];	
			$news_badge = $_REQUEST['news_badge'];	
			$news_date = $_REQUEST['news_date'];	
				
			$news_description = $_REQUEST['editor1'];	
			$news_image = $_FILES['image']['name'];
			
			$redirect = 'rmc-news';

			if($news_title == ''){
					
					
						$_SESSION['failed']='<div class="alert alert-danger alert-dismissable">News Title cant be empty<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
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
				
					$res = $functions->addRmcNews($news_title,$news_badge,$news_date,$news_description,$news_image);
					
					if($res){

						 $_SESSION['success']='<div class="alert alert-success alert-dismissable">News added successfully ! <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
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
							  <label class="control-labe1l" style="margin-bottom: 15px; "><strong>Rmc News</strong></label>
							 
							</div>
							
							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 40px"><strong>News Title</strong></label>
							 
							  <input type="text" name="news_title" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>

							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 28px"><strong>News Badge</strong></label>
							 
							  <input type="text" name="news_badge" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>
							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 40px"><strong>News Date</strong></label>
							 
							  <input type="date" name="news_date" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>
							
							
                         	<div class="control-group span12" style="margin-left: 0px;display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px;margin-right: 20px"><strong>Upload Image</strong></label>
							 
							  <input type="file" name="image" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;border-radius: 10px">
							  
							</div>
							
							<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px"><strong>News Description</strong></label>
							 
							   <textarea name="editor1"><?php echo $res[0]['rmc_story_left']  ?></textarea>
       							
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
				<th>News Title</th>
				<th>News Image</th>
				<th>News Badge</th>
				<th>News Year</th>
				
				<th>News Description</th>
				<th>Action</th>
				
				
			</tr>
	    </thead>
		<?php
					$result_ar = $functions->get_order_by('rmc_news','id','DESC');
					$i =0;
					foreach($result_ar as $result){
						
						?>
					<tr>
						<td class="center"><?= ++$i ?></td>
						<td class="center"><?= $result['news_title'] ?></td>
						<td class="center"><a href="image/rmc-news/<?= $result['news_image'] ?>" target="_blank"><img src="image/rmc-news/<?= $result['news_image'] ?>" style="width: 250px;height:150px"></a></td>
						<td class="center"><?= $result['news_badge'] ?></td>
						<td class="center"><?= $result['news_year'] ?></td>
						<td class="center"><?=   htmlspecialchars_decode($result['news_description']);   ?></td>
						<td class="center">
						  
							<a  class="btn btn-primary" href="edit-rmc-news.php?id=<?php echo $result["id"];?>&action=Edit" title="Delete">
							Edit 
						  </a>
							
							<a onclick="return confirm('Are you sure you would like to Delete Image?');"  class="btn btn-danger" href="rmc-news?id=<?php echo $result["id"];?>&action=Delete" title="Delete">
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