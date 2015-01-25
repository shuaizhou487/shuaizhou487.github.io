$(document).ready(function(){
	$(".icon-1").toggle(function(){
		$(".icon-1").addClass("icon-1-click");
	},function(){
		$(".icon-1").removeClass("icon-1-click");
	});

	$(".icon-3").toggle(function(){
		$(".message-share").show();
	},function(){
		$(".message-share").hide();
	});


            $(".m-icon").toggle(function(){
          		$(".m-menu").show();
          	},function(){
          		$('.m-menu').hide();
          	});

	       $("#go-top").hide();
	        $(window).scroll(function(){
	            	$(window).scroll(function(){
	            		if($(window).scrollTop()>50){
	            			$("#go-top").fadeIn(500);
	            		}
	            	    else{
	            	    	$("#go-top").fadeOut(500);
	            	    }
	            	});
	        });

	        $("#go-top a").click(function(){
	        	$("html,body").animate({scrollTop:0},500);
	        	return false;
	         });

});

