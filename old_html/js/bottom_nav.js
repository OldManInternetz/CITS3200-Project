// Sigh. This doesn't work on mobile. It works on the desktop version, but mobiles have a different type of scrolling, it seems.
// I will try to fix this later on, if it's even possible. We'll have to stick with having no footer or something for now.

$.fn.followTo = function (pos) {
    var $this = this,
        $window = $(window);
	



    $(window).on('scroll resize', function (e) {
        if ($window.scrollTop() + $(window).height() > $(document).height() - pos) {
            $this.css({
                position: 'fixed',
                bottom: pos - ($(document).height() - ($(window).scrollTop() + $(window).height()))
            });
        } else {
            $this.css({
                position: 'fixed',
                bottom: 0
            });
        }
    });
};

$('#bottom-nav').followTo(115);
$('#bottom-nav-mobile').followTo(132);

