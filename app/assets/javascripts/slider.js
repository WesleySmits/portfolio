$(function(){
	var images = $('.project-img');
	images.first().addClass('current');

	$('a.next').on('click', function() {
		
		if($('.current').is(':last-child')) {
			$('.oldActive').removeClass('oldActive');
			$('.current').removeClass('current').addClass('oldActive');
			images.first().addClass('current');
		}
		else {
			$('.oldActive').removeClass('oldActive');
			$('.current').removeClass('current').addClass('oldActive');
			images.next().addClass("current").removeClass('oldActive');
		}
	});

	$('a.previous').on('click', function() {
		
		if($('.current').is(':first-child')) {
			$('.oldActive').removeClass('oldActive');
			$('.current').removeClass('current').addClass('oldActive');
			images.last().addClass('current');
		}
		else {
			$('.oldActive').removeClass('oldActive');
			$('.current').removeClass('current').addClass('oldActive');
			images.prev().addClass("current").removeClass('oldActive');
		}

	});

});
