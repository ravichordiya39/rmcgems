<?php include("header.php"); ?>
      <section class="site-content">
            <!-- page-banner-section -->
        <?php $gemstone_data = $functions->get("gemstone_sections");  ?>
        <div class="category_banner" data-aos="fade-down" data-aos-delay="100">
           <img src="<?php  echo "admin/image/rmc-gemstone/".$gemstone_data[0]['banner_image'];  ?>" alt="">
        </div>
          
          <div class="showcase section section-t2 gemstone">
                      <div class="container">
                          <div class="row">
                            <div class="col-md-6" data-aos="fade-left" data-aos-duration="1200">
                               <?php  echo htmlspecialchars_decode($gemstone_data[0]['second_section_content'])	;  ?>
                            </div>
                            <div class="col-md-6 text-center infraimg" data-aos="fade-right" data-aos-duration="1200">
                               <img src="<?php  echo "admin/image/rmc-gemstone/".$gemstone_data[0]['second_section_image'];  ?>" alt="">            
                            </div>
                            </div>
                          <div class="row">
                              <div class="col-md-6 text-center infraimg" data-aos="fade-right" data-aos-duration="1200">
                               <img src="<?php  echo "admin/image/rmc-gemstone/".$gemstone_data[0]['third_section_image'];  ?>" alt="">             
                            </div>
                            <div class="col-md-6" data-aos="fade-left" data-aos-duration="1200">
                                 <?php  echo htmlspecialchars_decode($gemstone_data[0]['third_section_content'])	;  ?>
                            </div>                            
                            </div>
                           <div class="row">
                            <div class="col-md-6" data-aos="fade-left" data-aos-duration="1200">
                                 <?php  echo htmlspecialchars_decode($gemstone_data[0]['fourth_section_content'])	;  ?>
                            </div>
                            <div class="col-md-6 text-center infraimg" data-aos="fade-right" data-aos-duration="1200">
                               <img src="<?php  echo "admin/image/rmc-gemstone/".$gemstone_data[0]['fourth_section_image'];  ?>" alt="">             
                            </div>
                            </div>
                          <div class="row">
                              <div class="col-md-6 text-center infraimg" data-aos="fade-right" data-aos-duration="1200">
                               <img src="<?php  echo "admin/image/rmc-gemstone/".$gemstone_data[0]['fifth_section_image'];  ?>" alt="">                 
                            </div>
                            <div class="col-md-6" data-aos="fade-left" data-aos-duration="1200">
                                <?php  echo htmlspecialchars_decode($gemstone_data[0]['fifth_section_content'])	;  ?>
                            </div>                            
                            </div>
                           <div class="row">
                            <div class="col-md-6" data-aos="fade-left" data-aos-duration="1200">
                                 <?php  echo htmlspecialchars_decode($gemstone_data[0]['sixth_section_content'])	;  ?>
                            </div>
                            <div class="col-md-6 text-center infraimg" data-aos="fade-right" data-aos-duration="1200">
                               <img src="<?php  echo "admin/image/rmc-gemstone/".$gemstone_data[0]['sixth_section_image'];  ?>" alt="">                
                            </div>
                            </div>
                      </div>
                    </div>        
            <div class="about-us section-container contact-container">
            <div class="section-header text-center">
                <h2 class="section-title">CONTACT US</h2>               
            </div>
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
	        </div>
			  
           <?php include('footer.php'); ?>