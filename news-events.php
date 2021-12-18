<?php include("header.php"); ?>
      <section class="site-content">
            <!-- page-banner-section -->
        <?php $news_data = $functions->get("news_sections");  ?>
        <div class="category_banner" data-aos="fade-down" data-aos-delay="100">
           <img src="<?php  echo "admin/image/rmc-news/".$news_data[0]['banner_image'];  ?>" alt="">
        </div>          
          <div class="news_section section-container news-container news_event">
            <div class="container">             
                <div class="section-header text-center" data-aos="fade-down" data-aos-duration="800">
                <h2 class="section-title">NEWS &amp; EVENTS</h2>               
            </div>
           <?php $news = $functions->get('rmc_news'); ?> 
        <div class="row section-t2">
           <?php 
				foreach($news as $news_dzi)
				{ ?>
			
					<div class="col-md-4 col-sm-6 wow fadeInLeft" data-wow-delay="0.2s">
						<div class="why_inner">
							<img src="<?php echo "admin/image/rmc-news/".$news_dzi['news_image']; ?>" alt="">
							<span><label><?php echo $news_dzi['news_badge']; ?></label><div class="date"><?php echo $news_dzi['news_year']; ?></div></span>
							<h3><?php echo $news_dzi['news_title']; ?></h3>
							<?php echo htmlspecialchars_decode($news_dzi['news_description']); ?>                    
						</div>
					</div>
					
			<?php 	}
				?>
		
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
			  
			 <?php  include ("footer.php"); ?>  
