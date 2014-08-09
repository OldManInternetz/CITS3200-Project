$.fn.followTo = function (pos) {
    var $this = this,
        $window = $(window);
	



    $window.scroll(function (e) {
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

$('#bottom-nav').followTo(110);