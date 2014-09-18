jQuery ->
	if $('.pagination').length
		$(window).scroll ->
			url = $('.pagination .next_page').attr('href')
			if url && $(window).scrollTop() > $(document).height() - $(window).height() - 200
				$('.pagination').text("Loading more plants...")
				$.getScript(url)
		$(window).scroll()