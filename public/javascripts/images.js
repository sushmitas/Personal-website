$(function(){
var gallery = $("#media");
var placeholder = gallery.find("#placeholder img");
$(".proj_thumb_img:eq(0)").css({border: '3px solid black'});
	gallery.find("ul a").click(function() {

		
    var href = this.href;
    placeholder.attr("src", href);

    $('#caption').text(this.getAttribute("alt"));

    $(".proj_thumb_img").css({border: '1px solid black'})
    $(this).find("img").css({border: '3px solid black'})
    return false;
});
});
