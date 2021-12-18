<?php

include("header.php");

?>
    <section class="home-site-content">
        
        <div class="slider-section">
            <div class="slider-carousel" data-aos="fade-up">
         
		<?php 
			$slider_images = $functions->get('banners');	
				
			foreach($slider_images as $image)
			{ ?>
				<div class="slider-item">
           		 <div class="slider-images">
             	   <img src="<?php echo "admin/image/banners/".$image['image']; ?>" />
            </div>
          </div>
				
				
		<?php 	}
		?>
		
        </div>
        </div>
        
        <div class="support-section section-container" style="display:none">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-md-4 aos-init aos-animate" data-aos="fade-up" data-aos-duration="800">
                        <div class="support_inner">
                            <div class="support_icon">
                                <i class="fa fa-headphones" aria-hidden="true"></i>
                            </div>
                            <div class="support_text">
                                24/7 Customer Support
                                <span>Lorem Ipsum is simply</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 col-md-4 aos-init aos-animate" data-aos="fade-up" data-aos-duration="1000">
                        <div class="support_inner">
                            <div class="support_icon red">
                                <i class="fa fa-money" aria-hidden="true"></i>                                
                            </div>
                            <div class="support_text">
                                Money back guaranty
                                <span>Lorem Ipsum is simply</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 col-md-4 aos-init aos-animate" data-aos="fade-up" data-aos-duration="1200">
                        <div class="support_inner">
                            <div class="support_icon blue">
                                <i class="fa fa-gift" aria-hidden="true"></i>
                            </div>
                            <div class="support_text">
                                Gift Voucher 
                                <span>Lorem Ipsum is simply</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="about-us section-container">
            <div class="section-header text-center">
                <h2 class="section-title">RMC GEMS STORY</h2>               
            </div>
			<?php $home_sections_data = $functions->get('home_sections'); ?>
	        <div class="container">
	            <div class="row align-items-center">
	            	<div class="col-md-6 col-sm-6 about-us-box p-0">
                        <div class="about-us-box-text">	
                            <?php echo htmlspecialchars_decode($home_sections_data[0]['rmc_story_left']); ?>                 
	                    </div>
	                </div>
	                <div class="col-md-6 col-sm-6 about-us-box p-0">
	                	<div class="about-us-box-img">
	                    	<img src="<?php echo "admin/image/rmc-story-right-section/".$home_sections_data[0]['rmc_story_right']; ?>" alt="">
	                    </div>
	                </div>
	            </div>
	        </div>
        </div> 
        
        <div class="product-collection-section products-container section-container">
            <div class="container">
            <div class="section-header text-center" data-aos="fade-up" data-aos-duration="800">
                <h2 class="section-title">RMC PRODUCTS</h2>               
            </div>
            
            <div class="product-collection-wrapper" data-aos="fade-up" data-aos-duration="1200">
                <div class="product-carousel">
                	<?php $products = $functions->get("rmc_products");
						  foreach($products as $product)
						  {
					?>    
					
					 <div class="product-collection-item col-lg-4 col-md-4 col-sm-12 col-12 wow animate__animated animate__fadeInUp" data-wow-delay="0.4s">
                        <div class="product-collection-wrap">
                            <div class="product-collection-image"><a href="#">
                                    <img src="<?php echo "admin/image/rmc-products/".$product['product_image']; ?>" alt="" />
                                </a>
                            </div>
                            <div class="product-collection-summery">
                                <h4 class="product-collection-title"> <a href="#"><?php echo $product['product_name']; ?></a></h4>                       
                            </div>
                        </div>
                    </div>
					
					<?php  }  ?>
					
					
              </div>
            </div>
        </div>
        </div>
        
        
        <div class="about-us section-container infrastructure-container infra">
            <div class="section-header text-center">
                <h2 class="section-title">Infrastructure</h2>               
            </div>
	        <div class="container">
	            <div class="row align-items-center">
                    <div class="col-md-6 col-sm-6 about-us-box p-0">
	                	<div class="about-us-box-img">
	                    	<img src="<?php echo "admin/image/rmc-infra/".$home_sections_data[0]['rmc_infra_left']; ?>" alt="">
	                    </div>
	                </div>
	            	<div class="col-md-6 col-sm-6 about-us-box p-0">
                        <div class="about-us-box-text">	
                            <?php echo htmlspecialchars_decode($home_sections_data[0]['rmc_infra_right']); ?>
                            </ul>
                  
	                    </div>
	                </div>
	                
	            </div>
	        </div>
        </div>
        
    <div class="about-us section-container rubymines">
	        <div class="container">
	            <div class="row align-items-center row justify-content-center">
	            	<div class="col-md-6 about-us-box p-0">
                        <div class="about-us-box-text text-center">
                            <h2>Find Your Perfect Gemstones</h2>                  
	                    </div>
	                </div>
	                
	            </div>
	        </div>
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
        
        <div class="news_section section-container news-container">
            <div class="container">             
                <div class="section-header text-center" data-aos="fade-down" data-aos-duration="800">
                <h2 class="section-title">NEWS &amp; EVENTS</h2>               
            </div>
            
        <div class="row section-t2">
          <?php $news = $functions->get('rmc_news');
			
				foreach($news as $news_hwe)
				{
		  ?>
			
			<div class="col-md-4 col-sm-6 wow fadeInLeft" data-wow-delay="0.2s">
                <div class="why_inner">
                    <img src="<?php echo "admin/image/rmc-news/".$news_hwe['news_image'];  ?>" alt="">
                    <span><label><?php echo $news_hwe['news_badge'];  ?></label><div class="date"><?php echo $news_hwe['news_year'];  ?></div></span>
                    <h3><?php echo $news_hwe['news_title'];  ?></h3>
                    <p><?php echo htmlspecialchars_decode($news_hwe['news_description']);  ?></p>                    
                </div>
            </div>
			<?php }  ?>
            
            
        </div>
      </div>
        </div>
        
        <div class="about-us section-container csr-container">
            <div class="section-header text-center">
                <h2 class="section-title">RMC CSR</h2>               
            </div>
	        <div class="container">
	            <div class="row align-items-center section-t2">
                    <div class="col-md-6 col-sm-6 about-us-box p-0">
	                	<div class="about-us-box-img">
	                    	<img src="<?php echo "admin/image/rmc-csr/".$home_sections_data[0]['csr_left_image']; ?>" alt="">
	                    </div>
	                </div>
                    <div class="col-md-6 col-sm-6 about-us-box p-0">
	                	<div class="about-us-box-img">
	                    	<img src="<?php echo "admin/image/rmc-csr/".$home_sections_data[0]['csr_right_image']; ?>" alt="">
	                    </div>
	                </div>
	            	<div class="col-md-12 col-sm-12 about-us-box">
                        <div class="about-us-box-text">	
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								
							<?php echo  htmlspecialchars_decode(($home_sections_data[0]['csr_below_content'])); ?>	
                             <!--   <p class="para3 ">RMC has a 100% EOU in SEZ Sitapura, Jaipur with high quality processing machines and tools for manufacturing coloured stones. The company possesses state-of-the-art technology and equipment used by its highly skilled artisans and designers to create gorgeous gems that match international standards. One of the major strengths of RMC lies in sourcing the raw material directly from mines, cutting and polishing them with 
the most superior and skilled workforce, and always maintain huge quantity of rough stones and preforms in inventory, which would aid in speedy delivery. Further, RMC has strong quality check team, which is engaged in each and every manufacturing process separately. Moreover, the company has developed its own in-house ERP system to manage and control the entire process right from rough stones to final delivery of the finished product. Furthermore, RMC has an in-house Research &amp; Development department, which dedicatedly works towards constantly improving quality of its products and processes along with production capacity.</p>
                                <ul class="cnc">
                                <li><i class="fa fa-hand-o-right" aria-hidden="true"></i> To comprehend its customers’ specific needs pertaining
to size, shape, and colour of gemstones</li>
                                <li><i class="fa fa-hand-o-right" aria-hidden="true"></i> To provide glittering gemstones, which are in keeping
with the current market trends and fashion</li>
                                <li><i class="fa fa-hand-o-right" aria-hidden="true"></i> To churn out sparkling quality, this clearly distinguishes
the gemstones from the rest.</li>
                                </ul>
                                <div class="space3"></div>
                                <p class="para2">Customers and clients can leverage many mutual synergies and benefits through associating with RMC. Highly skilled team members at RMC use state-of-the-art technology and equipment to produce world class range of gems and jewellery. Each piece of stone goes through stringent quality tests at various levels, which ensures that the finished product matches the exact specifications set before the commencement of the manufacturing process. This helps in providing a precision finish. 
                                </p>
                                <p>
                                At Derewala, they believe that each employee should have the freedom to live with economic and social poise. With a strong belief for human rights, they offer every employee an opportunity for growth and prosperity. </p> -->
                                </div>                  
	                    </div>
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
       <?php  include ("footer.php"); ?>     