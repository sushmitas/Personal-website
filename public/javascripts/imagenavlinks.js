$(function(){


 if (document.images)
    {
      preload_image_object = new Image();
      // set image url
      image_url = new Array();
      image_url[0] = "http://simplysushmita.com/images/home/designframe_color.png";
      image_url[1] = "http://simplysushmita.com/images/home/artframe_color.png";
      image_url[2] = "http://simplysushmita.com/images/home/resumeframe_color.png";
      image_url[3] = "http://simplysushmita.com/images/home/aboutframe_color.png";


       var i = 0;
       for(i=0; i<=3; i++) 
       {
         preload_image_object.src = image_url[i];
				 $('.profile').append(preload_image_object);
       }
    }




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
