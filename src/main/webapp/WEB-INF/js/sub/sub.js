jQuery(document).ready(function($){
	
	$('#priceBtn').on('click', function(){
    	alert("preparing");
    });
	
        var sub_tab_Offset = $('.product_des_tab').offset().top;

        $(window).scroll(function(){
          var sub_tab = $('.product_des_tab'),scroll = $(window).scrollTop();

          if (scroll >= sub_tab_Offset) sub_tab.addClass('fixed');
          else sub_tab.removeClass('fixed');
        });


       $('ol.product_des_tab li').on('click', function(){
            $('ol.product_des_tab li.tab_active').removeClass('tab_active');
            $(this).addClass('tab_active');
        });
       
    $(window).on("scroll", function() {
    
            var topHeight = $("#sub-section-1").outerHeight() + $("#sub-section-2").outerHeight();
            var scrollTop = $(this).scrollTop();

            var st1 = topHeight + $("#sub_product_des").outerHeight();
            var st2 = st1 + $("#sub_product_function").outerHeight();
            var st3 = st2 + $("#sub_product_test").outerHeight();
                
            if (scrollTop < st1) {
                $(".product_des_tab li").removeClass("active");
                $(".product_des_tab li").eq(0).addClass("active");
            }

            if (scrollTop > st1 && scrollTop < st2) {
                $(".product_des_tab li").removeClass("active");
                $(".product_des_tab li.tab_center").addClass("active");
            }

            if (scrollTop > st2 && scrollTop < st3) {
                $(".product_des_tab li").removeClass("active");
                $(".product_des_tab li").eq(2).addClass("active");
            }
        });
});