<?php
ob_start();

require_once('admin/functions/functions.php');

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="images/fav_icon.jpg" type="image/x-icon">
  <title>Buy Gemstones Online, Paraiba Tourmaline, Morganite, Aquamarine</title>
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
  <!-- CSS FIle-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css" />   
  <link rel="stylesheet" href="css/animate.min.css" type="text/css" />
  <link rel="stylesheet" href="css/fancybox.min.css" type="text/css" />
  <link rel="stylesheet" href="css/slick.css" type="text/css" />
  <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
  <link rel='stylesheet' href='https://cdn.rawgit.com/michalsnik/aos/2.0.4/dist/aos.css'>    
  <link rel="stylesheet" href="css/style.css" type="text/css" />
  <link rel="stylesheet" href="css/responsive.css" type="text/css" />
  <!-- Js Library -->
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
    <style>button.navbar-toggler { display:none; }
    @media screen and (min-width: 600px) {
     .side_nav {
   display:none;
  }
}
    </style>
	<?php $top_header = $functions->get('top_header'); ?>
  <div class="wrapper">
    <header class="header-section">
      <div class="header">
        <!--<div class="header-top">
          <div class="container">
            <div class="header-top-inner" data-aos="flip-up" data-aos-delay="100">
              <div class="row">
                  <div class="col-md-6 col-sm-6">
                    <div class="phone_area">
                        <a href="#"><i class="fa fa-phone" aria-hidden="true"></i><?php echo $top_header[0]['contact']; ?></a>
                        <a href="#"><i class="fa fa-envelope" aria-hidden="true"></i> <?php echo $top_header[0]['email']; ?></a>
                    </div>
                  </div>
                  <div class="col-md-6 col-sm-6">
                    <div class="social_area">
                        <a target="_blank" href="<?php echo $top_header[0]['fb']; ?>"><i class="fa fa-facebook-f"></i></a>
                        <a target="_blank" href="<?php echo $top_header[0]['instagram']; ?>"><i class="fa fa-instagram"></i></a>
                        <a target="_blank" href="<?php echo $top_header[0]['pinterest']; ?>"><i class="fa fa-pinterest"></i></a>
                        <a target="_blank" href="<?php echo $top_header[0]['twitter']; ?>"><i class="fa fa-twitter"></i></a>
                        <a target="_blank" href="<?php echo $top_header[0]['youtube']; ?>"><i class="fa fa-youtube"></i></a>
                      </div>
                  </div>
              </div>
            </div>
          </div>
        </div>-->
        <div class="header-middle">
          <div class="container">
            <div class="header-row">
              <div class="header-logo" data-aos="fade-down" data-aos-delay="100">
				<?php $logo = $functions->get('settings'); 
				  
				  ?>  
                <a class="logo-link" href="index.php"><img class="logo" src="<?php echo "admin/image/logo/".$logo[0]['logo']; ?>" alt="logo"></a>
              </div>
             
             <div class="header-menu navbar-expand-lg">
                 <!-- Top menu -->
                    <nav class="nav-menu navbar-expand-md navbar-no-bg">                       
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarNav">
                                <ul class="navbar-nav ml-auto">
                             <?php 
							
								$menus = $functions->get_where_custom('menus','status','active');
								$i=1;
								foreach($menus as $menu)
									{  
									
									/*	if($i==1)
										{
											$href='#top-content';	
										}
										if($i==2)
										{
											$href='#products';	
										}
										if($i==3)
										{
											$href='#infrastructure';	
										}
										if($i==4)
										{
											$href='#awards';	
										}
										if($i==5)
										{
											$href='#news';	
										}
										if($i==6)
										{
											$href='#csr';	
										}
										if($i==7)
										{
											$href='#contact';	
										}
									 */
									 
									 
										if($i==1)
										{
											$href_hwe='company.php';	
										}
										if($i==2)
										{
											$href_hwe='gemstone.php';	
										}
										if($i==3)
										{
											$href_hwe='infrastructure.php';	
										}
										if($i==4)
										{
											$href_hwe='awards-and-certifications.php';	
										}
										if($i==5)
										{
											$href_hwe='news-events.php';	
										}
										if($i==6)
										{
											$href_hwe='csr.php';
										}
										if($i==7)
										{
											$href_hwe='contactus.php';	
										}
									 
									 
									 
									?>
											<li class="nav-item">
											<a class="" href="<?= $href_hwe ?>"><?= $menu['name'] ?></a>
											</li>
							<?php $i++;	}
									
							 ?>				
						
                                </ul>
                            </div>
                    </nav>
                 
                 <div id="mySidenav" class="sidenav">
                  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
               		
					 <?php 
							
								$menus = $functions->get('menus');
								$i=1;
								foreach($menus as $menu)
									{  
									
										if($i==1)
										{
											$href_hwe='company.php';	
										}
										if($i==2)
										{
											$href_hwe='gemstone.php';	
										}
										if($i==3)
										{
											$href_hwe='infrastructure.php';	
										}
										if($i==4)
										{
											$href_hwe='awards-and-certifications.php';	
										}
										if($i==5)
										{
											$href_hwe='news-events.php';	
										}
										if($i==6)
										{
											$href_hwe='csr.php';
										}
										if($i==7)
										{
											$href_hwe='contactus.php';	
										}
									
								?>
										 
					  <a href="<?= $href_hwe ?>"><?= $menu['name'] ?></a> 
				 <?php 		$i++;
						}	 ?>
				 
                </div>
                <span class="side_nav" onclick="openNav()"><i class="fa fa-align-right"></i></span>

            </div>   
            </div>
          </div>
        </div>
        
      </div>
    </header>
	  
    <!--=====================================================
                                Header Section End
        =========================================================-->
