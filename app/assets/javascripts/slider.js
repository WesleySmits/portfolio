// $(function(){
// 	var images = $('.current-project .project-img');
// 	images.first().addClass('current');

// 	$('a.next').unbind().on('click', function() {
// 		if($('.current').is(':last-child')) {
// 			$('.current').removeClass('current');
// 			images.first().addClass('current');
// 		}
// 		else {
// 			$('.project-img.current').nextAll('.project-img:first').andSelf().toggleClass("current");
// 		}
// 	});

// 	$('a.previous').on('click', function() {
		
// 		if($('.current').is(':first-child')) {
// 			$('.oldActive').removeClass('oldActive');
// 			$('.current').removeClass('current').addClass('oldActive');
// 			images.last().addClass('current');
// 		}
// 		else {
// 			$('.oldActive').removeClass('oldActive');
// 			$('.current').removeClass('current').addClass('oldActive');
// 			images.prev().addClass("current").removeClass('oldActive');
// 		}

// 	});
// });
