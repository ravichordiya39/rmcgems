<?php include("header.php"); ?>
      
      <section class="site-content">
          
          <div class="category_banner" data-aos="fade-down" data-aos-delay="100">
           <img src="images/contact_banner.jpg" alt="">
        </div> 
          <div class="section-container contact-container contact_page">
            <div class="section-header text-center">
                <h2 class="section-title">CONTACT US</h2>               
            </div>
			 <?php 
			  
			 if(@$_POST['submit']){

			$redirect = 'contactus.php';

			$name = $_REQUEST['name'];
			$email = $_REQUEST['email'];
			$contact = $_REQUEST['contact'];
			$subject = $_REQUEST['subject'];
			$message = $_REQUEST['message'];
			
					
			$res = $functions->addContactQueries($name,$email,$contact,$subject,$message);
					
				if($res){

						 $_SESSION['success']='<div class="alert alert-success alert-dismissable">Queried successfully ! <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></div>';
                          header('Location: '.$redirect);
                          exit;
					}
			}
			  ?> 
	        <div class="container">
	            <div class="row section-t2">
                   <?php $contacts = $functions->get('rmc_contact'); 
					
						foreach($contacts as $contact)
						{
					?> 
					
					<div class="col-md-6 col-sm-6 about-us-box">
	                	<div class="about-us-box-img">
	                    	<img src="<?php echo "admin/image/rmc-contact/".$contact['contact_image']; ?>" alt="">
	                    </div>
                        <div class="contact_info">
                            <h3><?php echo $contact['contact_title']; ?></h3>
                            <p>
                                <strong>Address :</strong> <?php echo $contact['contact_address']; ?><br>
                                <strong>Phone :</strong>  <?php echo $contact['contact_phone']; ?><br>
                                <strong>Fax :</strong> <?php echo $contact['contact_fax']; ?><br>
                                <strong>Email :</strong>  <a href="mailto:<?php echo $contact['contact_email']; ?>"><?php echo $contact['contact_email']; ?></a> <br>
                                <strong>Website :</strong> <a href="#"><?php echo $contact['contact_website']; ?></a> 
                                
                            </p>
                        </div>
	                </div>
					
					<?php } ?>
                   	                
	            </div>
                <div class="row justify-content-center section-t2 contact-section">
              <?php    $contact_form = $functions->get('contact_sections'); 
						echo htmlspecialchars_decode($contact_form[0]['contact_form']); 
					?>
                </div>
	        </div>
            <?php include('footer.php'); ?>