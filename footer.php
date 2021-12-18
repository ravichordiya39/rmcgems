<?php $settins_data = $functions->get('settings'); ?>
<div class="copyright_area"><?php echo htmlspecialchars_decode($settins_data[0]['bottom_footer']); ?></div>
        </div>      
       

    </section>
    
    <div class="scroll-top">
      <a class="scroll-to-top" href="javascript:void(0);" id="scrolltop"><i class="fa fa-angle-up"></i></a>
    </div>
 <div id="loader" class="loader"></div>
  
  </div>
  <!-- Wrapper -->
  <!-- Scripts FIle-->
  <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/wow.min.js"></script>
  <script type="text/javascript" src="js/jquery-ui.min.js"></script>
  <script type="text/javascript" src="js/fancybox.min.js"></script>
  <script type="text/javascript" src="js/slick.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/function.js"></script>
    
    <script>
        function openNav() {
          document.getElementById("mySidenav").style.width = "280px";
        }

        function closeNav() {
          document.getElementById("mySidenav").style.width = "0";
        }
    </script>

  <script>
        $('a.scroll-link').on('click', function(e) {
		e.preventDefault();
		scroll_to($(this), $('nav').outerHeight());
	});
	// toggle "navbar-no-bg" class
	$('.top-content .text').waypoint(function() {
		$('nav').toggleClass('navbar-no-bg');
	});
    </script>
 
    
  <script src='https://cdn.rawgit.com/michalsnik/aos/2.0.4/dist/aos.js'></script>    
 
  <script>
        AOS.init({
          duration: 1000
        });
  </script>
 <script>
         // Scrolling Effect
         $(window).on("scroll", function() {
             if ($(window).scrollTop() > 41) {
                 $('.header-middle').addClass('fixed-header');
             } else {
                 $('.header-middle').removeClass('fixed-header');
             }
         })

     </script>
 <script>
	$(document).ready(function(){
		$("#myModal").modal('show');
	});
</script>
  
</body>
</html>