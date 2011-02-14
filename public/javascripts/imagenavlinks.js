$(function(){


var pics = $("#frame").find("img");
var text = $("#nav").find("a");

$('.navlink').mouseenter(function(e){
	 $.each(pics, function(i, val){
		if(e.target.className == val.className){
			var newsrc = $(this).attr("src").replace("bw", "color");
			$(this).attr("src", newsrc);
			//alert("oogabooga:in " + $(this).attr("src") + " " + text.get(i).className);
			text.eq(i).css({'color':'#339966'});
			break;
		}
		
	 });

	
});

$('.navlink').mouseleave(function(e){
	$.each(pics, function(i, val){
		if(e.target.className == val.className){
			var newsrc = $(this).attr("src").replace("color", "bw");
			$(this).attr("src", newsrc);
			text.eq(i).css({'color':'#000'});
			//alert("out " + $(this).attr("src"));
		}

	});



});


(function($) {
	var cache = [];
	$.preLoadImages = function(){
		var args_len = arguments.length;
		for(var i = args_len; i--;){
			var cacheImage = document.createElement('img');
			cacheImage.src = arguments[i];
			cache.push(cacheImage);
		}
	}


})(jQuery)



});
