
$(function(){

  $('.toggle_btn').on('click', function(){
    if (!$('#header').hasClass('open')){
      $('#header').addClass('open');
    }else{
      $('#header').removeClass('open');
    }
  });

  $('#mask').on('click', function(){ 
    $('#header').removeClass('open');
  });


  $('a[href^="#"]').click(function(){
    let href = $(this).attr("href");
    let target = $(href == "#" || href == "" ? 'html' : href);
    let position = target.offset().top;
    $("html, body").animate({scrollTop:position}, 600, "swing");
    return false;
  });
  
  if (window.matchMedia( '(min-width: 600px)' ).matches){
    $(window).scroll(function(){
      $('.fadein').each(function(){
        let scroll = $(window).scrollTop();
        let target = $(this).offset().top;
        let windowHeight = $(window).height();
        if(scroll > target - windowHeight + 200){
          $(this).css('opacity','1');
          $(this).css('transform', 'translateY(0)');
        }
      });
    });
  }else{
    $(window).scroll(function(){
      $('.fadein').each(function(){
        let scroll = $(window).scrollTop();
        let target = $(this).offset().top;
        let windowHeight = $(window).height();
        if(scroll > target - windowHeight + 100){
          $(this).css('opacity','1');
          $(this).css('transform', 'translateY(0)');
        }
      });
    });
  }

});
