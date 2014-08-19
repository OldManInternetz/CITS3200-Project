// Button that scrolls to top of page
$('#bottom-nav-1').bind('tap', function () {
	$('#scrollbox').animate({scrollTop : 0},500);
	return false;
});


// Button that scrolls to bottom of page
$('#bottom-nav-2').bind('tap', function () {
	$('#scrollbox').animate({scrollTop : $(scrollbox)[0].scrollHeight - $(document).height() + 30},500);
	return false;
});