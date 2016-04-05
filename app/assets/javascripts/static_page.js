$(".static_pages.home").ready(function() {
  var toggle = false;
  //when scroll down add class navbarlogin
  $(function () {
	 var $win = $(window);
	 $win.scroll(function () {
	 	 $( "header" ).addClass( "navbarlogin" );
	   if ($win.scrollTop() == 0){	
	       $( "header" ).removeClass( "navbarlogin" );
	   };
	 });
	});
  // When toggle nav in the top add class navbarLogin
		$('#btn-toggle').on('click', function () {
  		var $win = $(window);
  		 if ($win.scrollTop() == 0 && toggle === false){	
  		 		toggle = true;
	        $( "header" ).addClass( "navbarlogin" );	
	   	 }else if ($win.scrollTop() == 0){	
	   	 		toggle = false;
	   	 		$( "header" ).removeClass( "navbarlogin" );
	   	 }
		});
});