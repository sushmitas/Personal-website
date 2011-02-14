$(function(){
	var pics = $.find("#frame img");
	var textlinks = $.find("#nav a");
	
	//Set up picture hover event handlers
	$.each(pics, function(){
		//$("#debug").append($(this).attr("src") + "<br />");
		$(this).hover(
			//mouseenter handler
			function(e){
				//Output debug info to page
				//$("#debug").append("hover " + $(this).attr("src"))
				//Find index of hovered image
				var index = 0;
				while(pics[index] != this){index += 1;}
				//$("#debug").append(" " + index)
				//Highlight the text link
				$("#nav a").eq(index).css({color: '#396'});
				
				//Change the image
				var src = $(this).attr("src").replace("bw", "color");
				$(this).attr("src", src);
			}, 
			//mouseleave handler
			function(e){
				//Output debug info to page
				//$("#debug").append(" out<br />")
				
				//Find index of hovered image
				var index = 0;
				while(pics[index] != this){index += 1;}
				//$("#debug").append(" " + index)
				//Highlight the text link
				$("#nav a").eq(index).css({color: '#000'});
				
				//Change the image
				var src = $(this).attr("src").replace("color", "bw");
				$(this).attr("src", src);
			}
		);
	
	});
	
	//Set up text link hover event handlers
	$.each(textlinks, function(){
		//$("#debug").append($(this).attr("src") + "<br />");
		$(this).hover(
			function(e){
				$("#debug").append("hover " + $(this).attr("href"))
				//Highlight the text link
				$(this).css({color: '#396'});
				
				//Find index of hovered link
				var index = 0;
				while(textlinks[index] != this){index += 1;}
				//$("#debug").append(" " + index)
				//Change the image
				var src = $("#frame img").eq(index).attr("src").replace("bw", "color");
				$("#frame img").eq(index).attr("src", src);
			}, 
			function(e){
				//$("#debug").append(" out<br />")
				//Highlight the text link
				$(this).css({color: '#000'});
				
				//Find index of hovered link
				var index = 0;
				while(textlinks[index] != this){index += 1;}
				//$("#debug").append(" " + index)
				//Change the image
				var src = $("#frame img").eq(index).attr("src").replace("color", "bw");
				$("#frame img").eq(index).attr("src", src);
			}
		);
	
	});

/*pics.hover(function(e){
	$("#debug").append($(this).attr("src") + " hovered<br />");
});
*/

});
