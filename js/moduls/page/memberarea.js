var page;
$(document).ready(function() {
    page = new Page();
    new Highscore(page.getMobile());
    page.activateHashAction();
});



