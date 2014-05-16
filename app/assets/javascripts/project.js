$(function(){
	var project = $('section.project');
	project.hide();

	$('.project-thumb').on('click', function() {
		project.slideDown();
	})
});
