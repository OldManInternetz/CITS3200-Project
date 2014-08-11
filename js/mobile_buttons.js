// Button that scrolls to top of page
$('#bottom-nav-1').click(function () {
	$('html, body').animate({scrollTop : 0},500);
	return false;
});


// Button that scrolls to bottom of page
$('#bottom-nav-2').click(function () {
	$('html, body').animate({scrollTop : $(document).height()},500);
	return false;
});
