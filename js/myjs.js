$(document).ready(function(){
	$("#go-top").hide();
	        $(window).scroll(function(){
	            	$(window).scroll(function(){
	            		if($(window).scrollTop()>50){
	            			$("#go-top").fadeIn(500);
	            			$(".header").addClass('.scrolled');
	            		}
	            	    else{
	            	    	$("#go-top").fadeOut(500);
	            	    }
	            	});
	        });

	        $("#go-top a").click(function(){
	        	$("html,body").animate({scrollTop:0},800);
	        	return false;
	         });
})
