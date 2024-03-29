function scroll_to(clicked_link, nav_height) {
	var element_class = clicked_link.attr('href').replace('#', '.');
	var scroll_to = 0;
	if(element_class != '.top-content') {
		element_class += '-container';
		scroll_to = $(element_class).offset().top - nav_height;
	}
	if($(window).scrollTop() != scroll_to) {
		$('html, body').stop().animate({scrollTop: scroll_to}, 1000);
	}
}

(function ($) {
    
    

	// Preloader Image
		$(document).ready(function() {
			$('#loader').fadeOut('slow',function(){$(this).remove();});
		}); 
	
	// Sticky Header 
//	  $(window).scroll(function() {
//			if($('.header-middle').length){
//				var mainHeader = $('.header-middle').height();
//				var windowpos = $(window).scrollTop();
//				if (windowpos >= mainHeader) {
//					$('.header-middle').addClass('fixed-header');
//					
//				} else {
//					$('.header-middle').removeClass('fixed-header');
//					
//				}
//			}
//	   });

	// Respoonsive Menu		  
		  $( ".navbar-nav li" ).click(function(event) {
			// stop bootstrap.js to hide the parents
			event.stopPropagation();
			// hide the open children
			$( this ).find(".sub-menu").removeClass('open');
			// add 'open' class to all parents with class 'dropdown-submenu'
			$( this ).parents(".sub-menu").addClass('open');
			// this is also open (or was)
			$( this ).toggleClass('open');
		});
		
		$(".mega-menu-item > li").hover(
			function () {
			  $(this).addClass("result_hover");			  
			},
			function () {
			  $(this).removeClass("result_hover");			  
			}
		);
		$(".navbar-nav > li.has-children").hover(
			function () {
				$('.mega-menu-item > li:first-child').addClass('result_hover');		  
			},
			function () {
				$('.mega-menu-item > li:first-child').removeClass('result_hover');			  
			}
		);
		
	
	// Secarh Section
	  $('.search-icon').click(function(){    
		$('.search-wrapper').toggleClass('open');  
		 $('body').toggleClass('search-wrapper-open');
	  });
	   $('.search-cancel').click(function(){    
		$('.search-wrapper').removeClass('open');  
		$('body').removeClass('search-wrapper-open');
	  });
	
	// Scrool Function Back to  Top And Transparent Header
	   $(window).scroll(function() {    
			var scroll = $(window).scrollTop();
			if(scroll >= 100) {
				$('.scroll-top').fadeIn(300);
				$(".header-fixed").addClass("fix");
				$(".header-transparent").addClass("transparency");
			} else {
				$('.scroll-top').fadeOut(300);
				$(".header-fixed").removeClass("fix");
				$(".header-transparent").removeClass("transparency");
			}
	  });
	// Scrool Function Back to  Top   
	  $('.scroll-top').click(function(){ 
		 $("html, body").animate({ scrollTop: 0 }, 600); 
		 return false; 
	  });
	  
		
	//Animated	
		 new WOW().init();	 

	// Tooltip	 
	$('[data-toggle="tooltip"]').tooltip(); 	
	
	// Form Focus
	$("input, select, textarea").on('focus blur', function(){ 
		$(this).closest('.form-group').toggleClass('focus');
    });
	$('input, select, textarea').on('blur', function(event) {
		var inputValue = this.value;
		if (inputValue) {     
		  $(this).closest('.form-group').addClass('has-value'); 	
		} else {    
		  $(this).closest('.form-group').removeClass('has-value')	
		}
	});
	$("input, select, textarea").change(function(){
		$(this).closest('.form-group').addClass('has-value'); 	
	});
	$('input, select, textarea').each(function(){
		if ($(this).val()){
		  $(this).closest('.form-group').addClass("has-value");
		}
	});

	// Slider Carousel
	$('.slider-carousel').slick({ 		
		arrows: false,
		dots: true,
		slidesToShow: 1,
		slidesToScroll: 1,
		infinite: true,
		swipe: true,
		//fade: true,
		cssEase: "cubic-bezier(0.7, 0, 0.3, 1)",
		touchThreshold: 100,
		pauseOnHover: false,
		touchMove: true,
		draggable: true,
		autoplay: true,
		pauseOnHover: true,
		speed: 500,
		autoplaySpeed: 8e3,
		prevArrow: '<div class="slick-prev"><i class="fa fa-angle-left" aria-hidden="true"></i></div>',
		nextArrow: '<div class="slick-next"><i class="fa fa-angle-right" aria-hidden="true"></i></div>',
	});
	
	
   // recipe Carousel
      $('#recipeCarousel').slick({
  interval :2000,
  dots: true,
  arrows: false,
})

$('.carousel .carousel-item').each(function(){
    var next = $(this).next();
    if (!next.length) {
    next = $(this).siblings(':first');
    }
    next.children(':first-child').clone().appendTo($(this));
    
    for (var i=0;i<2;i++) {
        next=next.next();
        if (!next.length) {
        	next = $(this).siblings(':first');
      	}
        
        next.children(':first-child').clone().appendTo($(this));
      }
});



	
	// Announcement Carousel
	$('.header-announcement-carousel').slick({ 
		dots: false,
		infinite: true,
		speed: 300,
		slidesToShow: 1,
		slidesToScroll: 1, 
		autoplay: true,
		autoplaySpeed: 3000, 
		pauseOnHover:false,
		arrows: false,
		prevArrow: '<div class="slick-prev"><i class="fa fa-angle-left" aria-hidden="true"></i></div>',
		nextArrow: '<div class="slick-next"><i class="fa fa-angle-right" aria-hidden="true"></i></div>',	
		});	
	
	  // Product Category Carousel
	  $('.product-category-carousel').slick({ 
		dots: false,
		infinite: true,
		speed: 300,
		slidesToShow: 3,
		slidesToScroll: 1, 
		cssEase: "cubic-bezier(0.7, 0, 0.3, 1)",
		autoplay: false,
		autoplaySpeed: 3000, 
		pauseOnHover:false,
		// centerMode: true,
  		// centerPadding: '0px',
		arrows: true,
		//prevArrow: '<div class="slick-prev"><i class="fas fa-angle-left"></i></div>',
		//nextArrow: '<div class="slick-next"><i class="fas fa-angle-right"></i></div>',
		prevArrow: $(".product-category-section .arrow.prev"),
        nextArrow: $(".product-category-section .arrow.next"),
		 responsive: [
		  {
			breakpoint: 1024,
			settings: {
			  slidesToShow: 3,
			}
		  },
		  {
			breakpoint: 768,
			settings: {
			  slidesToShow: 2,
			}
		  },
		  {
			breakpoint: 600,
			settings: {
			  slidesToShow: 1,   
			}
		  } 
		]
		});
	
	
	// Product Carousel
	   $('.product-carousel').slick({ 
		  dots: true,
		  infinite: true,
		  speed: 300,
		  slidesToShow: 4,
		  slidesToScroll: 1, 
		  autoplay: true,
		  autoplaySpeed: 3000, 
		  pauseOnHover:false,
		  arrows: false,
		  prevArrow: '<div class="slick-prev"><i class="fas fa-angle-left"></i></div>',
		  nextArrow: '<div class="slick-next"><i class="fas fa-angle-right"></i></div>',
		   responsive: [
			{
			  breakpoint: 991,
			  settings: {
				slidesToShow: 3,
			  }
			},
			{
			  breakpoint: 767,
			  settings: {
				slidesToShow: 2,
			  }
			},
			{
			  breakpoint: 575,
			  settings: {
				slidesToShow: 1,   
			  }
			} 
		  ]
		});

		// Product Carousel
		$('.product-carousel-3').slick({ 
			dots: true,
			infinite: true,
			speed: 300,
			slidesToShow: 3,
			slidesToScroll: 1, 
			autoplay: true,
			autoplaySpeed: 3000, 
			pauseOnHover:false,
			arrows: false,
			prevArrow: '<div class="slick-prev"><i class="fas fa-angle-left"></i></div>',
			nextArrow: '<div class="slick-next"><i class="fas fa-angle-right"></i></div>',
				responsive: [
				{
				breakpoint: 991,
				settings: {
					slidesToShow: 3,
				}
				},
				{
				breakpoint: 767,
				settings: {
					slidesToShow: 2,
				}
				},
				{
				breakpoint: 575,
				settings: {
					slidesToShow: 1,   
				}
				} 
			]
			});

	// Testimonial Carousel
	$('.testimonial-carousel').slick({ 
		dots: false,
		infinite: true,
		speed: 300,
		slidesToShow: 2,
		slidesToScroll: 1, 
		autoplay: true,
		autoplaySpeed: 3000, 
		pauseOnHover:false,
		arrows: true,
		prevArrow: '<div class="slick-prev"><i class="fa fa-angle-left" aria-hidden="true"></i></div>',
		nextArrow: '<div class="slick-next"><i class="fa fa-angle-right" aria-hidden="true"></i></div>',
		responsive: [			
			{
			breakpoint: 767,
			settings: {
				slidesToShow: 2,
			}
			},
			{
			breakpoint: 575,
			settings: {
				slidesToShow: 1,   
			}
			} 
		]	
		});	

		
		// Product Gallery
		$('.product-gallery-slider').slick({
			slidesToShow: 1,
			slidesToScroll: 1,
			arrows: false,
			fade: true,
			cssEase: "cubic-bezier(0.7, 0, 0.3, 1)",
			touchThreshold: 100,
			pauseOnHover: false,
			touchMove: false,
			draggable: false,
			autoplay: false,
			pauseOnHover: true,
			asNavFor: '.product-gallery-thumbs'
		  });
		  $('.product-gallery-thumbs').slick({
			slidesToShow: 4,
			slidesToScroll: 1,
			asNavFor: '.product-gallery-slider',
			vertical: true,
  			verticalSwiping: true,
			dots: false,
			arrows: false,
			centerMode: true,
		    centerPadding: '0px',
			focusOnSelect: true,
            responsive: [			
                {
                breakpoint: 480,
                settings: {
                    slidesToShow: 3,
                }
                },
                {
                breakpoint: 375,
                settings: {
                    slidesToShow: 2,   
                }
                }
            ]  
		  });		

		// Load popup
		$(window).on('load',function(){
			$('#newsletter-popup').modal({
				   backdrop: 'static',
				   //keyboard: false,
				   show: true
			   }); 
		   });


		// Filter Product
		$('.showall-filter .filter-open').click(function(){    
			$('.filter-hide').addClass('d-block');  
			$('.filter-open').addClass('d-none');  
			$('.filter-sidebar').toggleClass('filter-display');
			$('body').toggleClass('filter-body-open');
		});
		$('.showall-filter .filter-hide, .filter-sidebar-close').click(function(){    
			$('.filter-hide').removeClass('d-block');  
			$('.filter-open').removeClass('d-none'); 
			$('.filter-sidebar').removeClass('filter-display');
			$('body').removeClass('filter-body-open');
		});   
		   	
		// display Product View
		$('.product-display-mode #grid').click(function(){    
			$('.aa-product-catg').addClass('columns-3');  
			$('.aa-product-catg').removeClass('columns-4'); 
			$('.product-display-mode #grid').toggleClass('active');  
			$('.product-display-mode #grid_large').toggleClass('active');  			
		});
		$('.product-display-mode #grid_large').click(function(){    
			$('.aa-product-catg').addClass('columns-4');  
			$('.aa-product-catg').removeClass('columns-3'); 	
			$('.product-display-mode #grid').toggleClass('active');  
			$('.product-display-mode #grid_large').toggleClass('active');  		
		});

		// Widget Open hide
		$('.filter-sidebar .product-widget-title').click(function(){  
			$( this ).toggleClass('open');	
			$( this ).parents(".product-widget").toggleClass('open');		
		});		

		
		// Quantity Button plus minus		 
		$(".qty-btn").off('click.changeQuantity').on('click.changeQuantity', function(e) {
			e.preventDefault();
			e.stopPropagation();	
			var oldValue = $('.qty').val(),
				newVal = 1;
			var totalinvent = $('.qty').attr('maxlength');		
	
			if($(this).hasClass('inc')) {
			if(parseInt(oldValue) < parseInt(totalinvent)) {
			newVal = parseInt(oldValue) + 1;
			}
			}
			else if(oldValue > 1) {
			newVal = parseInt(oldValue) - 1;
			}
	
			$(".qty").val(newVal);	
			
		});	

		// Edit address
		$(".enable-value").click(function() {      
			$(".account-form .form-control, .account-form  .btn").attr("disabled", false);		
			$(".enable-value, .address-content").addClass('d-none');
			$(".disable-value,.account-form .buttons, .address-form").removeClass('d-none');
		});
		$(".disable-value").click(function() {
			$(".account-form .form-control, .account-form  .btn").attr("disabled", true);
			//$(".account-form .buttons").toggleClass('open');
			$(".enable-value, .address-content").removeClass('d-none');
			$(".disable-value, .account-form .buttons, .address-form").addClass('d-none');
		});

		$('#new-address .cancel').click(function(){  
			$('#new-address').toggleClass('show'); 
		  
		 });

		// Login/Signup PopUp
		 $('.account-link.register').click(function(){  
			$('.modal-register').removeClass('d-none'); 
			$('.modal-login').addClass('d-none');		  
		 });
		 $('.account-link.login').click(function(){  
			$('.modal-register').addClass('d-none'); 
			$('.modal-login').removeClass('d-none');		  
		 });

		// Payment Method 
		$("input[name$='payment-input']").click(function(){
			var inputValue = $(this).attr("value");
			var targetBox = $("." + inputValue);
			$(".payment-method").not(targetBox).hide();
			$(targetBox).show();
		});

		// 8. Price-slider
		
		$( "#slider-range" ).slider({
			range: true,
			min: 0,
			max: 100000,
			values: [ 0, 100000 ],
			slide: function( event, ui ) {
			$( "#amount" ).val( "₹" + ui.values[ 0 ] + " - ₹" + ui.values[ 1 ] );
			}
		});
		$( "#amount" ).val( "₹" + $( "#slider-range" ).slider( "values", 0 ) + " - ₹" + $( "#slider-range" ).slider( "values", 1 ) );


		$(".toggle-password").click(function() {
			$(this).toggleClass("fa-eye fa-eye-slash");
			var input = $($(this).attr("toggle"));
			if (input.attr("type") == "password") {
			  input.attr("type", "text");
			} else {
			  input.attr("type", "password");
			}
		  });
		 
			
	}(jQuery));