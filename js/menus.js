
$(document).ready(function(){
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
                $("html,body").animate({scrollTop:0},800);
                return false;
             });
})


$(function(){
    $(window).scroll(function(){
             var tops = $(".header"); 
             var scroH = $(document).scrollTop(); 
             tops.each(function(){ 
                var top = $(this).offset().top; 
                    if (scroH > 0 ) { 
                    $(".header").addClass('scrolled') ;
                 } else { 
                     $(".header").removeClass('scrolled') ;
             } 
        })  
    })
})
