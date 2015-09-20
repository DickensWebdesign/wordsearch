/* ************************************************** */
// Made with love, power and energy drinks
// DevTitle: wordsearch-online.eu - wordsearch Puzzle for everyone


// Made by FitKidsGames
// All rights reserved
// early season 2015

/* ************************************************** */

function Page() {

    var mobile = $("#mob").val();
    var gm = null;
    this.touched = false;
    var self = this;
    var href = "";
    // frames

    var pageHead = $("#page-head");
    var headline = $("#headline");
    var contentWrapper = $("#content-wrapper");
    // modals
    var modalWrapper = $("#bwc-modal-underlay");
    var infoModal = $("#info-cloud-wrapper");
    var modalId;
    var modal = null;
    var modalError = $(".form-error");
    // menu
    var menuId;
    var menuBtnClicked = false;
    var menuOpen = false;
    var banner = $(".play-now");


    //public
    this.getMobile = function() {
        return mobile;
    };

    this.activateHashAction = function() {
        href = window.location.hash;
        if (href) {
            var triggerId = href.split("-").shift().slice(1);
            $("." + triggerId + ".opener").trigger("click");
            $("html, body").animate({scrollTop: 0}, 50);
        }
    };

    this.setTouchOut = function (time) {
        var timeout = time || 30;
        setTimeout(function () {
            self.touched = false;
        }, timeout);

    };

    // // MODALS
    // GET MODAL
    this.getModal = function () {
        modal = $(document).find("#" + modalId).parents(".bwc-modal-frame");
    };

    //OPENER
    $(document).on("click" || " touchend", ".opener", function (e) {
        e.preventDefault();
        if (self.touched == false) {
            self.touched = true;
            self.setTouchOut();
            if ($(this).is("a")) {
                href = $(this).attr('href');
                window.location.hash = href;
            } else {
                window.location.hash = "";
            }
            modalId = $(this).attr("class").split(" ").shift();
            self.modifyModal("init");
        }
    });

    //CLOSER
    $(document).on("click" || " touchend", ".closer", function (e) {
        e.preventDefault();
        if (self.touched == false) {
            self.touched = true;
            self.setTouchOut();
            var action = $(this).attr("class").split(" ").shift();
            if (action == "redirect") {
                window.location.hash = "";
                window.location.reload();
            } else {
                self.modifyModal();
                window.location.hash = "";
                href = "";
            }
        }
    });

    this.initNewModal = function () {
        self.getModal();
        self.showModal();
    };

    this.killModal = function () {
        modal.removeClass("open").animate({"top": "-150", opacity: 0}, 200,
            function () {
                modal.css({"display": "none"});
                modalError.html("&nbsp;");
                modal = null;
                $(".input-status").html("");
            });
    };

    // MODAL SHOW
    this.showModal = function () {
        var pos = 0;
        if (mobile == "1") {
            pos = "-50px"
        }

        if (modalWrapper.is(':hidden')) {
            modalWrapper.find('.loading-info').css({"display": "none"});
            modalWrapper.css({display: "block"});
            modalWrapper.animate({opacity: 1.0}, 250);
        }
        modal.addClass("open");
        modal.css({"display": "block"}).animate({"top": pos, opacity: 1.0}, 700, function () {
            modal.find('input[type=text]').first().focus();
            $("html, body").animate({scrollTop: 0}, 50);
        });
    };

    // MODAL HIDE
    this.modifyModal = function (init) {
        var initNewModal = init || false;
        if (modal !== null || init !== false) {
            if (modal !== null) {
                self.killModal();
            }
            setTimeout(function () {
                if (modalWrapper.is(':visible') && initNewModal == false) {
                    modalWrapper.animate({opacity: 0}, 250, function () {
                        modalWrapper.css({display: "none"})
                    });
                }
                if (infoModal.is(':visible')) {
                    infoModal.css({display: "none"})
                }
                if (initNewModal == "init") {
                    self.initNewModal();
                }
            }, 500);
        }
    };

    //INTERNAL LINKS HANDLER
    $(document).on("click" || " touchend", ".content-link", function (e) {
        var that = this;
        var newContent = $(that).attr("href");
        window.location.hash = newContent;
        e.preventDefault();
        if (self.touched == false) {
            self.touched = true;
            self.setTouchOut();
            var contentFrames = $(".view");
            var index = 0;
            contentFrames.animate({opacity: 0}, 100, function () {
                contentFrames.removeClass("view").css({display: "none"});
                index++;
                if (index == contentFrames.length) {
                    var classes = $(that).attr("class").split(" ");
                    if (classes.length > 1) {
                        secondContent = classes[1].split("-");
                        secondContent = secondContent[secondContent.length - 1];
                        $("." + secondContent).addClass("view").css({display: "block"}).animate({opacity: 1}, 100);
                    }
                    $(newContent).parent(".content-holder").addClass("view").css({display: "block"}).animate({opacity: 1}, 100);
                    $("html, body").animate({scrollTop: headline}, 600);
                }
            });
        }
    });

    // // MENUS
    // INIT MENU
    this.initMenu = function () {
        menuId = "left";
        self.showMenu();
        if (mobile == "0") {
            setTimeout(function () {
                banner.css({"display": "block"}).animate({opacity: 1.0}, 300, function () {
                    setInterval(function () {
                        banner.animate({width: "155px", height: "207px"}, 300).animate({
                            width: "150px",
                            height: "197px"
                        }, 300)
                    }, 4000);
                });
            }, 1000);
        }
    };

    // SHOW MENU
    this.showMenu = function () {
            var menu = $("#menu-" + menuId);
            menu.css({"display": "block"});
            var pos;
            (mobile == "1") ? pos = 0 : pos = "-10px";
            if (menuId == "left") {
                menu.animate({"left": pos, opacity: 1.0}, 250);
            } else {
                menu.animate({"right": pos, opacity: 1.0}, 100, function() {
                    $("#menu-right-button").attr('src', "http://www.wordsearch-game.com/img/icons/menu-button-minus.png");
                });
            }

    };


    // HIDE MENU
    this.hideMenu = function () {
            var menu = $("#menu-" + menuId);
            if (menuId === "left") {
                if (mobile == "0") {
                    menu.animate({left: "-300px", opacity: 0.0}, 250, function () {
                        menu.css({"display": "none"});
                    });
                } else {
                    menu.animate({opacity: 0.0}, 100, function () {
                        menu.css({"display": "none"});
                    });
                }
            } else {
                menu.animate({right: "-300px", opacity: 0.0}, 250, function () {
                    $("#menu-right-button").attr('src', "http://www.wordsearch-game.com/img/icons/menu-button.png");
                });
            }
    };

    // INTERNAL GAME API
    var levelId = null;
    $(document).on("click" || " touchend", ".level", function (e) {
        e.stopImmediatePropagation();
        if (self.touched == false) {
            self.touched = true;
            self.setTouchOut(1000);
            if (mobile == "1") {
                pageHead.animate({opacity: 0, top: "-60px"}, 100, function () {
                    pageHead.css({display: "none"});
                });
            } else {
                headline.animate({opacity: 0, top: "-60px"}, 100, function () {
                    headline.css({display: "none"});
                    // button fade out
                });
            }
            href = $(this).attr('href');
            window.location.hash = href;
            menuId = "right";
            self.hideMenu();
            menuId = "left";
            self.hideMenu();
            contentWrapper.animate({opacity: 0}, 10, function () {
                contentWrapper.css({display: "none"})
            });
            levelId = $(this).attr("class").split(" ").shift(); // value = easy, middle, etc...
            // this we can add to the second menu, then we have a combination of level = easy and as second value ,
            $("#second-level").css({display: "block"}).animate({opacity: 1}, 600);
        }
        e.stopPropagation();
        e.preventDefault();

    });
        /* choose AI */
    var levelAI = null;
    $(document).on("click" || " touchend", ".level-sec", function (e) {
        e.stopImmediatePropagation();
        if (self.touched == false) {
            self.touched = true;
            self.setTouchOut(1000);
            levelAI = 0;
            var gameId = 0;
            if ($(this).hasClass("ai")) {
                gameId = 1; // yes it's a game against AI and not against TIME only
                levelAI = $(this).attr("class").split(" ").shift();
            }

            // now we have all values we need
            // if he choose hard  a easy, hard combination -> easy is the size of puzzle and hard the difficulty of AI
            // init the game
            if (gm == null) {
                // gameId // singleplayer or not
                // levelId // --> Puzzlesize (beginnner - Expert
                // levelAI --> difficulty of AI (easy, middle, hard)
                gm = new Game(gameId, levelId, levelAI, mobile);
            } else {
                gm.setLevel(levelId);
                gm.setLevelAI(levelAI);
                gm.initGame();
            }
            e.stopPropagation();
            e.preventDefault();
        }
    });

    // INIT MENU RIGHT
    $(document).on("click" || " touchend", "#menu-right-button", function (e) {
        e.preventDefault();
        if(menuBtnClicked == false && self.touched == false) {
            menuBtnClicked = true;
            self.touched = true;
            self.setTouchOut();
            menuId = "right";
            if (!menuOpen) {
                self.showMenu();
                menuOpen = true;
            } else {
                self.hideMenu();
                menuOpen = false;
            }
            setTimeout(function() { menuBtnClicked = false; }, 300);
        }
    });
    // INIT PAGE
    $(".view").show();
    self.initMenu();

    // PRINT-API
    $(document).on("click" || " touchend", "#generate", function(e) {
        e.preventDefault();
        if (touched == false) {
            touched = true;
            self.setTouchOut();
            new gamePrint(12, 12);    // print wordsearch
        }
    });

    $(document).on("click", "#bwc-modal-underlay", function() {
        $(".closer").trigger();
    });
}

//init allways
new FormValidation();

function hideLoader() {
    $(document).find('.loading-info').css({"display": "none"});
    $(document).find('.loading').css({"display": "none"});
}

// globals
$(document).ajaxStart(function () {
    $(document).find('.loading-info').css({"display": "block"});
    $(document).find('.loading').css({"display": "block"});
});
$(document).ajaxStop(function() { hideLoader(); });