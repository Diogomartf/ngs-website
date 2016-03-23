$(".static_pages.home").ready(function() {
  
  $(function () {
	 var $win = $(window);
	 $win.scroll(function () {
	 	 $( "header" ).addClass( "navbarlogin" );
	   if ($win.scrollTop() == 0){
	       $( "header" ).removeClass( "navbarlogin" );
	   }
	 });
	});

});