$(function(){
var gallery = $("#media");
var placeholder = gallery.find("#placeholder img");

	gallery.find("ul a").click(function() {

    var href = this.href;
    placeholder.attr("src", href);
    //placeholder.fadeOut("fast", function() {
    //    $(this).attr("src", href).fadeIn("fast");
    
    return false;
});
});
