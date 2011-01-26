$(function(){
var gallery = $("#media");
var placeholder = gallery.find("#placeholder img");

	gallery.find("ul a").click(function() {

		
    var href = this.href;
    placeholder.attr("src", href);
    //placeholder.fadeOut("fast", function() {
    //    $(this).attr("src", href).fadeIn("fast");
		
		//$('#caption').replaceWith('<div id=' + $(this).attr("alt") + '</div>');
	//	$('#
	/*	var elements = gallery.find("ul a").getElementsByTagName('img');
		elements[0].className = 'proj_sel_thumb_img';
		for(i=0; i<elements.length; i++)
		{
			alert(elements[i].getElementsByTagName('img')[0].className;

		}*/
		
    $('#caption').text(this.getAttribute("alt"));
    return false;
});
});
