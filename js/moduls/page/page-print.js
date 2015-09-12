// INTRO
var page; // global object
$(document).ready(function() {
    var mobField = $("#mob");
    var mobile =  mobField.val();
    mobField.remove();
    page = new Page(mobile);
    $(".view").show();
    var href = window.location.hash;
    if(href) {
        var triggerId = href.split("-").shift().slice(1);
        $("." + triggerId + ".opener").trigger("click");
        $("html, body").animate({scrollTop: 0}, 50);
    }
    var game = new GamePrint(12, 12);
});


