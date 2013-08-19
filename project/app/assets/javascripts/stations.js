$(document).ready(function() {
	$('ul').on('click', 'li#compare', function(){
		$("this").closest('#station').addClass("highlight");
	});
});