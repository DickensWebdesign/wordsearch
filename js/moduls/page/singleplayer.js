var page;

function Highscore(mob) {

    var page = new Page(mob);
    var mobile = mob;
    var self = this;
    var mainWrapper = $("#main-content");
    var contentWrapper = $("#content-wrapper");
    var menu = $("#menu-left");
    var AJAX_ROOT = "http://www.wordsearch-game.com/php/ajax/";
    var hsIndex = 0;
    var fullDistance;
    var distance = -270;
    var moveClicks = 0;
    var highscoreFrame = null;
    var numOfHighscores = 6;
    var highscores = [];
    if (mobile == "0") {
        highscores[0] = "Beginner";
        highscores[1] = "Easy";
        highscores[2] = "Middle";
        highscores[3] = "Hard";
        highscores[4] = "Expert";
        highscores[5] = "Master";
        highscores[6] = "Godlike";
    } else {
        distance = -250;
        numOfHighscores = 2;
        highscores[0] = "Easy";
        highscores[1] = "Middle";
        highscores[2] = "Hard";
    }

    this.highscoreDown = function () {
        if (moveClicks >= 0 && moveClicks <= 8) {
            moveClicks++;
            fullDistance = distance * moveClicks;
            $('#tbl-' + hsIndex).animate({"top": fullDistance + "px"}, "fast");
        }
    };
    this.highscoreUp = function () {
        if (moveClicks > 0 && moveClicks <= 9) {
            moveClicks--;
            fullDistance = distance * moveClicks;
            $('#tbl-' + hsIndex).animate({"top": fullDistance + "px"}, "fast");
        }
    };
    this.highscoreBack = function () {
        if (hsIndex > 0) {
            changeFrame("back");
        }
    };
    this.highscoreNext = function () {
        if (hsIndex < numOfHighscores) {
            changeFrame("fore");
        }
    };

    function changeFrame(way) {
        $('#tbl-' + hsIndex).css({"display": "none", "top": 0 + "px"});
        (way == "fore") ? hsIndex++ : hsIndex--;
        $('#highscore-headline-users').html('Level: ' + highscores[hsIndex]); // Change Headline
        $('#tbl-' + hsIndex).css({"display": "block"});
        moveClicks = 0;
    };

    this.showHighscore = function () {
        menu.animate({opacity: 0}, 100);
        contentWrapper.animate({opacity: 0}, 100, function () {
            contentWrapper.css({display: "none"});
            menu.css({display: "none"});
        });
        highscoreFrame = $('#highscore-frame-users');
        highscoreFrame.css({"display": "block"}).animate({opacity: 1}, 100);
    };

    this.ajaxError = function () {
        confirm("Loading-Error: System could not create Highscore!\n\n The page will reload after confirmation!");
        window.location.reload();
    };

    // INITIATOR
    $(document).on("click" || "touchend", ".highscore", function(e) {
        e.preventDefault();
        if (page.touched == false) {
            page.touched = true;
            page.setTouchOut();
            if (highscoreFrame === null) {
                var url = AJAX_ROOT + "highscore-get.php";
                $.ajax({
                    type: "POST",
                    url: url,
                    data: {},
                    success: function (data) {
                        mainWrapper.append(data);
                    },
                    error: function () {
                        self.ajaxError();
                    }
                }).done(function () {
                    self.showHighscore();
                });
            } else {
                self.showHighscore();
            }
        }
    });

    $(document).on("click" || "touchend", ".highscore-button", function(e) {
        e.preventDefault();
        if (page.touched == false) {
            page.touched = true;
            page.setTouchOut();
            var actionId = $(this).attr("class").split(" ").shift();
            switch (actionId) {
                case "up":
                    self.highscoreUp();
                    break;
                case "down":
                    self.highscoreDown();
                    break;
                case "back":
                    self.highscoreBack();
                    break;
                case "next":
                    self.highscoreNext();
                    break;
            }
        }
    });

    $(document).on("click" || "touchend", ".highscore", function(e) {
        e.preventDefault();
        if (page.touched == false) {
            page.touched = true;
            page.setTouchOut();
            if (highscoreFrame === null) {
                var url = AJAX_ROOT + "highscore-get.php";
                $.ajax({
                    type: "POST",
                    url: url,
                    data: {},
                    success: function (data) {
                        mainWrapper.append(data);
                    },
                    error: function () {
                        self.ajaxError();
                    }
                }).done(function () {
                    self.showHighscore();
                });
            } else {
                self.showHighscore();
            }
        }
    });
    $(document).on("click" || "touchend", "#close-highscore", function(e) {
        e.preventDefault();
        if (page.touched == false) {
            page.touched = true;
            page.setTouchOut();
            highscoreFrame.animate({opacity: 0}, 100, function () {
                highscoreFrame.css({"display": "none"});
                menu.css({display: "block", opacity: 1});
                contentWrapper.css({display: "block"}).animate({opacity: 1}, 100, function () {
                });
            });
        }
    });

}

// init
$(document).ready(function() {
    page = new Page();
    new Highscore(page.getMobile());
    page.activateHashAction();

    startAnimation();
    function startAnimation() {
        $('#animate-text').animate({left: '90'},{easing: 'swing',duration: 5000});
        $('img.witch').fadeOut(5000, function() {
            $('img.witch').attr("src","http://www.wordsearch-game.com/img/content/witch2.png");
            $('img.witch').fadeIn(7000,function(){
                $('img.witch').attr("src","http://www.wordsearch-game.com/img/content/witch.png");
            });
        });

        $('.content-header-ultra-one').animate({left:'0'},"slow",startAnimation);

    }

});


