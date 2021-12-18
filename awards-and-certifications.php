<?php include("header.php"); ?>
      <section class="site-content">
            <!-- page-banner-section -->
         <?php $awards_data = $functions->get("awards_sections");  ?>
        <div class="category_banner" data-aos="fade-down" data-aos-delay="100">
            <img src="<?php  echo "admin/image/rmc-awards/".$awards_data[0]['banner_image'];  ?>" alt="">
        </div>
          
            <div class="shop-offer-section awards-container awards shop-look section-container">
          <div class="container">
              <div class="section-header text-center" data-aos="fade-down" data-aos-duration="800">
                <h2 class="section-title">AWARDS AND CERTIFICATIONS</h2>               
            </div>
            <div class="shop-offer-wrapper" data-aos="fade-down" data-aos-duration="1200">
              <div class="row shop-offer-row">
                <?php $awards = $functions->get('rmc_awards');
				  	  foreach($awards as $award)
					  { ?>
						  
						  <div class="shop-offer-item col-md-3 col-sm-6 col-12 wow animate__animated animate__fadeIn" data-wow-delay="0.3">
						  <div class="shop-offer-wrap">
							<a href="#">
							  <div class="shop-offer-image">
								<img src="<?php echo "admin/image/rmc-awards/".$award['award_image']; ?>" alt="">
							  </div>
							  <div class="shop-offer-summery">
								<h4 class="shop-offer-title"><span><?php echo $award['year']; ?></span> <?php echo $award['award_title']; ?></h4>
							  </div>
							</a>
						  </div>
						</div>
						  
					<?php 	  
					  }
				  ?>
				
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