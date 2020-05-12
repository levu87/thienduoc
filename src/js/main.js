function setBackground() {
	$('[setBackground]').each(function () {
		var background = $(this).attr('setBackground')
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center"
		})
	})
	$('[setBackgroundRepeat]').each(function () {
		var background = $(this).attr('setBackgroundRepeat')
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat"
		})
	})
}
function toggleMenu() {
	$('.nav__toggle-btn').on('click', function () {
		$('.nav__toggle-btn').toggleClass('active')
		$('.nav__nav-mobile').toggleClass('active')
		$('.back-drop').toggleClass('active')
		$('body').toggleClass('over-hidden')
	});
	$('.back-drop').on('click', function () {
		$('.nav__toggle-btn').removeClass('active')
		$('.nav__nav-mobile').removeClass('active')
		$('.back-drop').removeClass('active')
		$('body').removeClass('over-hidden')
	});
}
function toggleSearch() {
	$('.button-search').on('click', function () {
		$('.button-search').toggleClass('active')
		$('.search-box-wrap').toggleClass('active')
		$('.back-drop').toggleClass('active')
		$('body').toggleClass('over-hidden')

	});
	$('.back-drop').on('click', function () {
		$('.button-search').removeClass('active')
		$('.search-box-wrap').removeClass('active')
		$('.back-drop').removeClass('active')
		$('body').removeClass('over-hidden')
	});
}
function Headers(){
	$(window).scroll(function () {
		if ($(window).scrollTop() >= 200) {
			$('.header').addClass('fixed');
			// $('.header').addClass('visible');
		} else {
			$('.header').removeClass('fixed');
			// $('.header').removeClass('visible');
		}
	});

}
function Aos(){
	AOS.init({
		disable: 'phone',
		disable: "mobile",
		startEvent: "DOMContentLoaded", 
		initClassName: "aos-init", 
		animatedClassName: "aos-animate",

		delay: 0, 
		duration: 700, 
		easing: "ease", 
		once: true,
		mirror: false, 
		anchorPlacement: "top-bottom"
	});
}
function swiperInit(){
	let HomeBanner = new Swiper('.home-banner .swiper-container', {
        speed: 1000,
        navigation: {
            clickable: true,
            nextEl: '.home-banner .swiper-next',
            prevEl: '.home-banner .swiper-prev'
        },
        pagination: {
            el: '.home-banner .swiper-pagination',
            clickable: true
        },
	})

	let ChildBanner = new Swiper('.banner-child .swiper-container', {
        speed: 1000,
        navigation: {
            clickable: true,
            nextEl: '.banner-child .swiper-next',
            prevEl: '.banner-child .swiper-prev'
        },
        pagination: {
            el: '.banner-child .swiper-pagination',
            clickable: true
        },
	})

	let aboutBanner = new Swiper('.about .swiper-container', {
		speed: 1000,
		centeredSlides: true,
        navigation: {
            clickable: true,
            nextEl: '.about .button-next',
            prevEl: '.about .button-prev'
        },
	})


	let OtherProduct = new Swiper('.other-product .swiper-container', {
		speed: 1000,
		slidesPerView: 3,
		spaceBetween: 20,
        navigation: {
            clickable: true,
            nextEl: '.button-next',
            prevEl: '.button-prev'
		},
		breakpoints: {
			768: {
				slidesPerView: 2
			},
			576: {
				slidesPerView: 1
			}
		}
	})

	let OtherNews = new Swiper('.other-news .swiper-container', {
		speed: 1000,
		slidesPerView: 3,
		spaceBetween: 20,
        navigation: {
            clickable: true,
            nextEl: '.other-news .button-next',
            prevEl: '.other-news .button-prev'
		},
		breakpoints: {
			768: {
				slidesPerView: 2
			},
			576: {
				slidesPerView: 1
			}
		}
	})

	if ($('.product-detail').length > 0) {
		var ProductBigImageSlider = new Swiper('.product-detail .gallery-top', {
			slidesPerView: 1,
			effect: 'fade',
			lazy: true,
			fadeEffect: {
				crossFade: true,
			},
			on: {
				init: function () {
					$('.product-detail .gallery-thumbs').height(440)
				}
			},
			loop: true,
			freeMode: true,
			loopedSlides: 5, //looped slides should be the same
			watchSlidesVisibility: true,
			watchSlidesProgress: true,
			// thumbs: {
			// 	swiper: ProductSmallImageSlider,
			// }
		})
		var ProductSmallImageSlider = new Swiper('.product-detail .gallery-thumbs', {
			slidesPerView: 3,
			direction: 'vertical',
			centeredSlides: true,
			freeMode: true,
			spaceBetween: 20,
			slideToClickedSlide: true,
			lazy: true,
			loop: true,
			loopedSlides: 5,
			fadeEffect: {
				crossFade: true,
			},
			navigation: {
				prevEl: '.product-button-up',
				nextEl: '.product-button-down',
			}
		})
		ProductSmallImageSlider.controller.control = ProductBigImageSlider;
		ProductBigImageSlider.controller.control = ProductSmallImageSlider;
	}

}
function tabpro(){
	$('ul.detail-navigation li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.detail-navigation li').removeClass('current');
		$('.noi-dung').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})
}
function userToggle(){
	$(function() {
		$(".account-after .user").on("click", function(e) {
		  $(".account-after .list-item").addClass("active");
		  e.stopPropagation()
		});
		$(document).on("click", function(e) {
		  if ($(e.target).is(".account-after .list-item") === false) {
			$(".account-after .list-item").removeClass("active");
		  }
		});
	  });
}
// function CustomSelect() {
// 	$(".list-unstyled").on("click", ".init", function () {
// 		$(this).closest(".list-unstyled").children('li:not(.init)').toggle();
// 	});

// 	var allOptions = $(".list-unstyled").children('li:not(.init)');
// 	$(".list-unstyled").on("click", "li:not(.init)", function () {
// 		allOptions.removeClass('selected');
// 		$(this).addClass('selected');
// 		$(".list-unstyled").children('.init').html($(this).html());
// 		allOptions.toggle();
// 	});
// }
function backToTop(){
		var btn = $('#back-to-top');

	$(window).scroll(function() {
	if ($(window).scrollTop() > 300) {
		btn.addClass('show');
	} else {
		btn.removeClass('show');
	}
	});

	btn.on('click', function(e) {
	e.preventDefault();
	$('html, body').animate({scrollTop:0}, '500');
	});

}
function accordion(){
	

	  $(".accordions .accordion-title").click(function(e) {
        e.preventDefault();
        if (!$(this)
            .parent()
            .hasClass("active")
        ) {
            $(".accordions .accordion-item .accordion-content").slideUp();
            $(this)
                .next()
                .slideToggle();
            $(".accordions .accordion-item").removeClass("active");
            $(this)
                .parent()
				.addClass("active");
        } else {
            $(this)
                .next()
                .slideToggle();
			$(".accordions .accordion-item").removeClass("active");
        }
    });
}

function showMore(){
	$('#showmore-content').hide();
	$('#show-more').click(function(){
		$('#showmore-content').show();
		$(this).hide();
	});
}
function tabActive(){
	$('.section__1 .tab-item').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('.section__1 .tab-item').removeClass('active');
		$('.tab-content').removeClass('active');

		$(this).addClass('active');
		$("#"+tab_id).addClass('active');
	})
}
function tabActive2(){
	$('.section__3 .tab-item').click(function(){
		var tbl_id = $(this).attr('data-tab');

		$('.section__3 .tab-item').removeClass('active');
		$('.noidung').removeClass('active');

		$(this).addClass('active');
		$("#"+tbl_id).addClass('active');
	})
}
$(function () {
    $(".product-detail__information .noi-dung table tr").slice(0, 3).show();
    $(".viewmore-btn").on('click', function (e) {
        e.preventDefault();
        $("tr:hidden").slice(0, 3).slideDown();
        if ($("tr:hidden").length == 0) {
            $(".viewmore-btn").fadeOut('slow');
        }
    });
});
function CustomSelect() {
	$( "#sort" ).selectmenu({
		change: function() {
			if($(this).val() != '') {
				window.location = $(this).val();
			}
		},
		width: 200,
	});
}
$(document).ready(function () {
	swiperInit()
	setBackground()
	toggleMenu()
	userToggle()
	Headers()
	tabpro()
	Aos()
	CustomSelect()	
	backToTop()
	toggleSearch()
	accordion()
	showMore()
	tabActive()
	tabActive2()

	/////img alt
	$('.image>img').each(function() {
		var data = $(this).attr('alt');
		$(this)
		  .wrap("<div class='box-img'></div>")
		  .parent('.box-img')
		  .attr('data-alt', data)
		;
	  });

	$(".form-wrap-dtl").appendTo(".product-detail__information")

	$(".button-scroll").on("click", function() {
		$("html,body").animate(
			{
				scrollTop: $(".home-about").offset().top - 80
			},
			1000
		);
	});

	$(".popup-btn").fancybox()
	/////////////
	$('[data-fancybox="image"]').fancybox({
		baseClass: 'myFancyBox',
		thumbs: {
		  autoStart: true,
		  axis: 'x'
		}
	  })


	
	var moveMenu1 = new MappingListener({
		selector: ".nav__menu-left",
		mobileWrapper: ".nav__nav-mobile",
		mobileMethod: "appendTo",
		desktopWrapper: ".nav__logo",
		desktopMethod: "insertBefore",
		breakpoint: 1200,
	}).watch()

	var moveMenu2 = new MappingListener({
		selector: ".nav__menu-right",
		mobileWrapper: ".nav__nav-mobile",
		mobileMethod: "appendTo",
		desktopWrapper: "header .nav__logo",
		desktopMethod: "insertAfter",
		breakpoint: 1200,
	}).watch()

	var moveLanguage = new MappingListener({
		selector: ".language",
		mobileWrapper: ".nav__nav-mobile",
		mobileMethod: "appendTo",
		desktopWrapper: "header .search-wrap",
		desktopMethod: "insertAfter",
		breakpoint: 1200,
	}).watch()

	var moveMenu2 = new MappingListener({
		selector: ".hotline",
		mobileWrapper: ".nav__nav-mobile",
		mobileMethod: "appendTo",
		desktopWrapper: "header .language",
		desktopMethod: "insertAfter",
		breakpoint: 1200,
	}).watch()

	
	$('body').on('click', '#list li', function () {
		var mapHtml = $(this).children('.map-iframe').html();
		$('#map').html(mapHtml);

		$('#list li').removeClass('active');
		$(this).addClass('active');
		if ($(window).outerWidth() < 992) {
			$.fancybox.open({
				src: '#map',
				type: "inline",
				opts: {
					baseClass: "contact-map-popup"
				}
			});
		}
	});
});

//////////About navigation start////////
  jQuery(document).ready(function($){
	var aboutNav = $('.about-nav'),
		aboutNavTopPosition = aboutNav.offset().top,
		// taglineOffesetTop = $('#intro-tagline').offset().top + $('#intro-tagline').height() + parseInt($('#intro-tagline').css('paddingTop').replace('px', '')),
		contentSections = $('.section');
	
	$(window).on('scroll', function(){
		//on desktop - assign a position fixed to logo and action button and move them outside the viewport
		// ( $(window).scrollTop() > taglineOffesetTop ) ? $('#logo, .btn').addClass('is-hidden') : $('#logo, .btn').removeClass('is-hidden');
		
		//on desktop - fix about navigation on scrolling
		if($(window).scrollTop() > aboutNavTopPosition ) {
			//fix about navigation
			aboutNav.addClass('is-fixed');
			//push the .main-content giving it a top-margin
			$('.main-content').addClass('has-top-margin');	
			//on Firefox CSS transition/animation fails when parent element changes position attribute
			//so we to change about navigation childrens attributes after having changed its position value
			setTimeout(function() {
	            aboutNav.addClass('animate-children');
	            $('#logo').addClass('slide-in');
				$('.btn').addClass('slide-in');
	        }, 50);
		} else {
			aboutNav.removeClass('is-fixed');
			$('.main-content').removeClass('has-top-margin');
			setTimeout(function() {
	            aboutNav.removeClass('animate-children');
	            $('#logo').removeClass('slide-in');
				$('.btn').removeClass('slide-in');
	        }, 50);
		}

		//on desktop - update the active link in the about fixed navigation
		updateaboutNavigation();
	});

	function updateaboutNavigation() {
		contentSections.each(function(){
			var actual = $(this),
				actualHeight = actual.height() + parseInt(actual.css('paddingTop').replace('px', '')) + parseInt(actual.css('paddingBottom').replace('px', '')),
				actualAnchor = aboutNav.find('a[href="#'+actual.attr('id')+'"]');
			if ( ( actual.offset().top - aboutNav.height() - 80  <= $(window).scrollTop() ) && ( actual.offset().top +  actualHeight - aboutNav.height() - 80 > $(window).scrollTop() ) ) {
				actualAnchor.addClass('active');
			}else {
				actualAnchor.removeClass('active');
			}
		});
	}

	//on mobile - open/close about navigation clicking/tapping the .about-nav-trigger
	$('.about-nav-trigger').on('click', function(event){
		event.preventDefault();
		$(this).toggleClass('menu-is-open');
		aboutNav.find('ul').toggleClass('is-visible');
	});

	//smooth scrolling when clicking on the about navigation items
	aboutNav.find('ul a').on('click', function(event){
        event.preventDefault();
        var target= $(this.hash);
        $('body,html').animate({
        	'scrollTop': target.offset().top - aboutNav.height() + 1 - 80
        	}, 400
        ); 
        //on mobile - close about navigation
        $('.about-nav-trigger').removeClass('menu-is-open');
        aboutNav.find('ul').removeClass('is-visible');
    });

    //on mobile - open/close primary navigation clicking/tapping the menu icon
	$('.primary-nav').on('click', function(event){
		if($(event.target).is('.primary-nav')) $(this).children('ul').toggleClass('is-visible');
	});
});
////////////about navigation end/////////////