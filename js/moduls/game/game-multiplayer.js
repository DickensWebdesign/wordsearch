var mpGame;

function MpGame() {
    var websocket = null;
    var page;
    var tries = 0;
    var gameWrapper = $(".game-wrapper");
    // VARS FOR RESIZE AND INIT GAME
    var not_safari = navigator.userAgent.indexOf("Safari") == -1;
    var mobile = $("#mob").val();
    var touched = false;
    var self = this;
    var AJAX_ROOT = "<?php echo $_SESSION['root']; ?>php/ajax/";
    var startModal = $("#game-start-wrapper");
    var outerFrame = $("#main-content");
    var gameField = null;
    var row = null;
    var fontSize = null;
    var cell = null;
    var headerHeight = null;
    var gameHeight = null;
    var gameWidth = null;
    var cellWidth = null;
    // VARS GAME CONTROL
    var currentWord = "";
    var currentWordText = "";
    var currentWordId = "";
    var currentWordPiece = "";
    var currentWordLetter = "";
    var selector = "";
    var errorHandler = new ErrorHandler();
    var clock = new Clock();
    var clickCount = 0;
    var startTime = null;
    var playTime = null;
    var modalWrapper = $("#bwc-modal-underlay");
    var finalResultFrame = null;
    var finalEntryFrame = null;

    $(document).on("keydown",function (e) {
        if (e.keyCode === 114 || (e.ctrlKey && e.keyCode === 70)) {
            e.preventDefault();
        }
    });

    this.setTouchOut = function(){
        setTimeout(function() {
            touched = false;
        }, 30);
    };

    //// INBOUND CLASSES
    function ErrorHandler() {
        var mistakes = 0;
        var self = this;
        var active = false;
        var mistakeTimeout;
        var time;
        var whiteFields;

        this.returnMistakes = function() {
            return mistakes;
        };

        this.setTimeouterF = function() {
            if(active == true) {
                this.clearTimeouter();
            }
            active = true;
            time = 5000 + mistakes * 1000;
            mistakeTimeout = setTimeout(function() {
                $('.spiral').each(function() {
                    $(this).remove();
                });
                $('.white .letter').each(function() {
                    $(this).css({"display": "inline"});
                });
                active = false;
            }, time);
        };

        this.clearTimeouter = function() {
            clearTimeout(mistakeTimeout);
        };

        this.resetMistakes = function() {
            self.clearTimeouter();
            mistakes = 0;
        };

        this.throwGameError = function() {
            mistakes++;
            $("#errorbox").html('Mistakes: '+mistakes);
            whiteFields = $('.white').length;
            for (var i = 0; i <= mistakes; i++) {
                $('.white').eq(Math.floor(Math.random() * whiteFields)).children().css({"display": "none"}).parent().prepend('<span class="spiral">+</div>');
            }
            self.setTimeouter();
        };
    }

    function Clock() {
        var interval;
        var sec = 1;
        var min = 0;
        var timeKep = "<span class='game-time-holder'>:</span>";

        this.startClock = function() {
            interval = setInterval(function () {
                if (sec < 10) {
                    secOut = "<span class='game-time-number'>0</span><span class='game-time-number'>" + sec + "</span>";
                } else {
                    secOut = "<span class='game-time-number'>" + sec.toString().charAt(0) + "</span><span class='game-time-number'>" + sec.toString().charAt(1) + "</span>";
                }
                if (min < 10) {
                    minOut = "<span class='game-time-number'>0</span><span class='game-time-number'>" + min + "</span>";
                } else {
                    minOut = "<span class='game-time-number'>" + min.toString().charAt(0) + "</span><span class='game-time-number'>" + min.toString().charAt(1) + "</span>";
                }
                $('.show-time').html(minOut + timeKep + secOut);
                sec++;
                if (sec == 60) {
                    min++;
                    sec = 0;
                }
            }, 1000);
        };

        this.stopClock = function() {
            clearInterval(interval);
        };

        this.resetClock = function() {
            sec = 1;
            min = 0;
        };
    }

    // INIT GAME FIELD
    this.initGameField = function() {
        self.initGameSystematic();
    };

    //INIT GAME SYSTEMATIC
    this.initGameSystematic = function() {
        clock.stopClock();
        self.resetVars();
        errorHandler.resetMistakes();
        clock.resetClock();
        startTime = new Date().getTime();
        clock.startClock();
    };

    $(document).on("click", '#game-center table tbody tr td', function (e) {
        var inMenu = false;
        e.preventDefault();
        if(touched == false) {
            touched = true;
            self.setTouchOut();
            var ids = $(this).attr('data-id');
            ids = ids.split(', ');
            var clickedField = $(this);
            var clickedLetter = $(this).text().charAt(0);
            if (clickCount == 0) {
                $(".wordlist" + selector).each(function () {
                    currentWord = $(this);
                    currentWordText = $(this).text();
                    currentWordId = currentWord.attr("id");
                    currentWordLetter = currentWordText.charAt(0);
                    if (currentWordLetter == clickedLetter && ($.inArray(currentWordId, ids) !== -1)) {
                        currentWord.removeAttr("class").toggleClass("orangeMenu");
                        clickedField.removeAttr("class").toggleClass("orange");
                        inMenu = true;
                    }
                });
                if (inMenu == true) {
                    if(not_safari == true) {
                        audio = new Audio('sounds/true-bling.mp3').play();
                    }
                    currentWordPiece = clickedLetter;
                    clickCount++;
                } else {
                    if(not_safari == true) {
                        new Audio('sounds/error.mp3').play();
                    }
                    currentWord.removeAttr("class").toggleClass("wordlist");
                    currentWordPiece = "";
                    errorHandler.throwGameError();
                    currentWord = null;
                    clickCount = 0;
                    return false;
                }
            } else {
                $(".orangeMenu").each(function () {
                    currentWord = $(this);
                    currentWordText = $(this).text(); // words in menu
                    currentWordLetter = currentWordText.charAt(clickCount);
                    currentWordId = currentWord.attr("id");
                    if (currentWordLetter == clickedLetter && ($.inArray(currentWordId, ids) !== -1)) {
                        inMenu = true;
                    } else {
                        currentWord.removeAttr("class").toggleClass("wordlist");
                    }
                });
                if (inMenu == false) {
                    if(not_safari == true) {
                        new Audio('sounds/error.mp3').play();
                    }
                    $(".orange").removeAttr("class").toggleClass("white");
                    $(".orangeMenu").removeAttr("class").toggleClass("wordlist");
                    errorHandler.throwGameError();
                    clickCount = 0;
                    currentWord = null;
                    currentWordPiece = "";
                    return false;
                } else {
                    clickedField.removeAttr("class").toggleClass("orange");
                    currentWordPiece = currentWordPiece + clickedLetter;
                    if (currentWordPiece !== $('.orangeMenu').text()) {
                        if(not_safari == true) {
                            new Audio('sounds/true-bling.mp3').play();
                        }
                    }
                    clickCount++;
                }
                if (currentWordPiece === $('.orangeMenu').text()) {
                    if(not_safari == true) {
                        new Audio('sounds/word-found.mp3').play();
                    }

                    currentWordPiece = "";
                    var orange = $(".orange");
                    var i = 0;
                    interval = setInterval(function (){
                        orange.eq(i).removeAttr("class").toggleClass("green");
                        if(orange.length == 0) {
                            clearInterval(interval);
                        }
                        i++;
                    }, 150);
                    $('.orangeMenu').removeAttr("class").toggleClass("closed");
                    if (mobile == "1") {
                        $(".closed").remove();
                    }
                    clickCount = 0;
                }
                if (( $('.wordlist').length == 0) && ($('.orangeMenu').length == 0)) {
                    $("#game-overlay").css({zIndex: 11000});
                    playTime = new Date().getTime() - startTime;
                    clock.stopClock();
                    self.finishGame();
                }
            }
        }
    });

    this.resetVars = function() {
        clickCount = 0;
        currentWord = "";
        currentWordText = "";
        currentWordId = "";
        currentWordPiece = "";
        currentWordLetter = "";
    };

    this.resizeGame = function () {
        headerHeight = 130;
        gameField = $("#game-center table");
        row = $("#game-center table tbody tr");
        cell = $("#game-center table tbody tr td");
        gameHeight = $(window).height() - headerHeight;
        if (mobile == "0") {
            if(gameHeight > 500) {
                gameHeight = 500;
            }
            gameWidth = gameHeight + headerHeight + 230;
            gameWrapper.css({width: gameWidth + "px","height": gameHeight +65+"px"});
            gameField.css({width: gameHeight + "px", "height": gameHeight+"px"});
            cellWidth = (gameHeight / row.length) - 6;
            pad = 5;
            fs = 8;
            fsw = 14;
            if(row.length > 13) {
                pad = 2;
                fs = 6;
                fsw = 12;
            }
            if(row.length > 16) {
                pad = 0;
                fsw = 10;
                fs = 3;
            }
            fontSize = cellWidth - fs;
            $(".wordlist").css({padding: pad +"px", fontSize: fsw+"px"});
            cell.css({height: cellWidth + "px", width: cellWidth + "px", 'font-size': fontSize + "px"});
        } else {
            gameField = $("#game-center table tbody");
            var winW = $(window).width();
            if (winW > $(window).height() - headerHeight) {
                gameWidth = $(window).height() - headerHeight;
            } else {
                gameWidth = winW;
            }
            gameField.css({"width": gameWidth +"px", "height": gameHeight - 20 + "px"});
            cellWidth = Math.floor(gameWidth / row.length);
            fontSize = cellWidth-12;
            cell.css({"width": cellWidth, "height": cellWidth, "font-size": fontSize + "px"});
        }
    };

    this.startWaitingProcess = function() {
        tries++;
        $.post("<?php echo $_SESSION['root']; ?>php/ajax/multiplayer/ingame-wait-for-player.php", function(data) {
            if(tries < 150) {
                if (data == "false") {
                    setTimeout(function () {
                        self.startWaitingProcess()
                    }, 100);
                } else {
                    self.initGameField();
                    setTimeout(function() { gameWrapper.css({display: "block", opacity: 1}) }, 700);
                }
            } else {
                $("#main-content").append('<div id="content-wrapper"><div class="content-box"><h2 class="aligner">Interruption</h2><hr/><p class="color-red aligner">Your enemy seems to have problem to join the game.</p><hr/><p class="aligner">The game was canceled!</p> <p class="aligner">Please click<a class="content-textlink" href="../" title="Go back to the multiplayer user area">here</a> to return to the multiplayer user area!</p></div></div>')
            }
        })
    };

    stateCheck = function() {
        $.post("<?php echo $_SESSION['root']; ?>php/ajax/multiplayer/ingame-check-game-state.php", function(data) {
        })
    };


    stopGameCheck = function() {
        clearInterval("gameCheck");
    };

    this.startGameCheck = function() {
        gameCheck = setInterval(function () {
            stateCheck();
        }, 1000);
    };


    function UrlParameter() {
        var sPageURL = window.location.search.substring(1);
        var sURLVariables = sPageURL.split('=');
        return sURLVariables[1];
    }

    /*
    function Websocket(connectionId) {

        var id = connectionId;
        var socket;

        var wsUri = "ws://localhost:8080/wordsearchOnline/php/sockets/startDaemon.php";
        var output;

        function initWebsocket() {
            output = $("#mp-game-info");
            testWebSocket();
        }

        function testWebSocket() {
            websocket = new WebSocket(wsUri);
            websocket.onopen = function(evt) { onOpen(evt) };
            websocket.onclose = function(evt) { onClose(evt) };
            websocket.onmessage = function(evt) { onMessage(evt) };
            websocket.onerror = function(evt) { onError(evt) };
        }

        function onOpen(evt) {
            writeToScreen("CONNECTED");
            doSend("WebSocket rocks");
        }

        function onClose(evt) {
            writeToScreen("DISCONNECTED");
        }

        function onMessage(evt) {
            writeToScreen('<span style="color: blue;">RESPONSE: ' + evt.data+'</span>');
            websocket.close();
        }

        function onError(evt) {
            writeToScreen('<span style="color: red;">ERROR:</span> ' + evt.data);
        }

        function doSend(message) {
            writeToScreen("SENT: " + message);
            websocket.send(message);
        }

        function writeToScreen(message) {
            output.append("<p>"+message +"</p>");
        }
        initWebsocket();
    }
*/

    $(window).unload(function(){
        $.post(AJAX_ROOT+"ingame-remove-user-from-game.php");
    });

    // INIT RESIZE GAME
    $(window).resize(function () {self.resizeGame()});

    self.resizeGame();
    self.startGameCheck();
   //* websocket = new Websocket(UrlParameter()); */
}

$(document).ready(function () {
    page = new Page();
    mpGame = new MpGame();
    if($("#player-number").length > 0 ) {
        mpGame.startWaitingProcess();
    } else {
        mpGame.initGameField();
        setTimeout(function() { gameWrapper.css({display: "block", opacity: 1}) }, 300);
    }
});