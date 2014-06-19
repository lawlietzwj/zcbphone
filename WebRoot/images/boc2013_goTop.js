// JavaScript Document
//返回顶部
window.scrollTo(0, 1);
$(".back-to-top").hide();
function scroll_top(hight){
	if(typeof hight != 'undefined'){
		window.scrollTo(0, hight);
	}
	else{
		window.scrollTo(0, 1);
	}
    $(window).scroll(function () {
      if ($(this).scrollTop() > 200) { 
        $('.back-to-top').fadeIn();
      } else { 
        $('.back-to-top').fadeOut();
      }
   });
}
scroll_top(0);

