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
			
			$redirect = 'edit-rmc-news?id='.$_REQUEST['id'];

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
				
					$res = $functions->updateRmcNews($news_title,$news_badge,$news_date,$news_description,$news_image,$_REQUEST['id']);
					
					if($res){

						 $_SESSION['success']='<div class="alert alert-success alert-dismissable">News added successfully ! <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
                          header('Location: '.$redirect);
                          exit;
					}
				}
			}
						
					$res = $functions->get_where_custom('rmc_news','id',$_REQUEST['id']);
				//	print_r($res);
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
							 
							  <input type="text" name="news_title" value="<?php  echo $res[0]['news_title']; ?>" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>

							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 28px"><strong>News Badge</strong></label>
							 
							  <input type="text" name="news_badge" value="<?php  echo $res[0]['news_badge']; ?>" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>
							
							<div class="control-group span12" style="margin-left: 0px; display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px; margin-right: 40px"><strong>News Date</strong></label>
							 
							  <input type="date" name="news_date" value="<?php  echo $res[0]['news_year']; ?>" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;">
							  	
							</div>
							
							
                         	<div class="control-group span12" style="margin-left: 0px;display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px;margin-right: 20px"><strong>Upload Image</strong></label>
							 
							  <input type="file" name="image" required="" style="border: 1px solid black;box-shadow: 0px 0px 3px 2px black;border-radius: 10px">
							  
							</div>
							<div class="control-group span12" style="margin-left: 0px;display: flex">
							  <label class="control-labe1l" style="margin-bottom: 15px;margin-right: 40px"><strong>News Image</strong></label>
							 
							  <img src=" <?php echo "image/rmc-news/".$res[0]['news_image']; ?> ">
							  
							</div>
							
							<div class="control-group span12" style="margin-left: 0px;">
							  <label class="control-labe1l" style="margin-bottom: 15px"><strong>News Description</strong></label>
							 
							   <textarea name="editor1"><?php echo $res[0]['news_description']  ?></textarea>
       							
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