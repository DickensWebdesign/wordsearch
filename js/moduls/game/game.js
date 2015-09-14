function Game(game, level, levelA, mob) {

    /* */
    var levelAI = levelA;
    var AJAX_ROOT = 'http://www.wordsearch-game.com/php/ajax/';
    var game = game;
    var mobile = mob;
    var levelId = level;
    var touched = false;
    var self = this;

    var action = null;

    var startModal = $("#game-start-wrapper");
    var outerFrame = $("#main-content");
    var gameWrapper = null;
    var gameMegaWrapper = null;
    var gameField = null;
    var row = null;
    var fontSize = null;
    var cell = null;
    var headerHeight = null;
    var gameHeight = null;
    var gameWidth = null;
    var cellWidth = null;
    var uiLevel = null;
    var secLevel = $("#second-level");
    var levelArrayMob = [];
    levelArrayMob['Beginner'] = "Easy";
    levelArrayMob['Easy'] = "Middle";
    levelArrayMob['Middle'] = "Hard";
    // VARS GAME CONTROL
    var currentWord = "";
    var currentWordText = "";
    var currentWordId = "";
    var currentWordPiece = "";
    var currentWordLetter = "";
    var selector = "";
    var clickCount = 0;
    var whiteFields;
    var startTime = null;
    var playTime = null;
    var modalWrapper = $("#bwc-modal-underlay");
    var finalStateFrame = null;
    var finalResultFrame = null;
    var finalEntryFrame = null;
    var foundedWords = 0;
    var currentLetter = null;

    var errorHandler = new ErrorHandler();
    var randomSolver = new RandomSolver();
    var clock = new Clock();
    var sec = 0;

    $(document).on("keydown",function (e) {
        if (e.keyCode === 114 || (e.ctrlKey && e.keyCode === 70)) {
            e.preventDefault();
        }
    });

    this.setTouchOut = function(){
        var timeout = 100;
        setTimeout(function() {
            touched = false;
        }, timeout);
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

        this.setTimeouter = function() {
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
        sec = 1;
        var min = 0;
        var timeKep = "<span class='game-time-holder'>:</span>";
        var timeWrap = "<span class='game-time-number'>";
        var timeWrapEnd = "</span>";

        this.startClock = function() {
            interval = setInterval(function () {
                (sec < 10) ? secOut = timeWrap + "0" + timeWrapEnd + timeWrap + sec + timeWrapEnd : secOut = timeWrap + sec.toString().charAt(0) + timeWrapEnd + timeWrap + sec.toString().charAt(1) + timeWrapEnd;
                (min < 10) ? minOut = timeWrap + "0" + timeWrapEnd + timeWrap + min + timeWrapEnd : minOut = timeWrap + min.toString().charAt(0) + timeWrapEnd + timeWrap + min.toString().charAt(1) + timeWrapEnd;
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

    var volume = true;
    $(document).on("click" || "touchend", ".speaker", function() {
        if(volume == true) {
            $(".speaker").attr('src', "http://www.wordsearch-game.com/img/icons/speaker-minus.png");
            $(".speaker").attr('title', "Press to turn on the sound...");
            volume = false;
        } else {
            volume = true;
            $(".speaker").attr('src', "http://www.wordsearch-game.com/img/icons/speaker.png");
        }
    });



    function AI() {
        console.log(levelAI);
        var that = this;
        var AITimeouter = null;
        var ranger = [];
        var levelArrayAI = [];
        var levelArray = [];
        levelArrayAI['Easy'] = [15000, 30000]; // times in ms
        levelArrayAI['Middle'] = [10000, 20000]; // range when "he" find a word
        levelArrayAI['Hard'] = [5000, 15000];

        levelArray['Beginner'] = 0; // times in ms
        levelArray['Easy'] = 2000; // range when "he" find a word
        levelArray['Middle'] = 4000;
        levelArray['Hard'] = 6000; // times in ms
        levelArray['Expert'] = 8000; // range when "he" find a word
        levelArray['Master'] = 10000;
        levelArray['Godlike'] = 12000;


        var wordCount = 0;

        function setLevel() {
            ranger = levelArrayAI[levelAI];
            $.each(ranger, function(i, v) {
                ranger[i] = v + levelArray[levelId];
            });
        };

        function getWordNum() {
            wordCount = $(".wordlist").length;
            console.log(wordCount);
        };

        function findWord() {
            var wordValue =  $(".wordlist").eq(wordCount).text();
            var word = wordCount-1;
            wordCount--; // decrease
            console.log(wordCount);

            if(wordCount == 0) {
                that.stopAI();
                self.finishGame("lost");
                var div = document.createElement("div");
                div.style.width = "200px";
                div.position ="absolute";
                div.innerHTML = "Your enemy found word ".wordValue;
            };
        };

        function startAITimer() {
            var AITimeout = Math.random() * (ranger[1] - ranger[0]) + ranger[0];
            AITimeouter = setTimeout(function() {
                console.log(AITimeout);
                console.log("Your Enemy found a word");
                findWord();
                console.log('Word found by AI');
                // repeat THIS function
                startAITimer();
            }, AITimeout)
        };

        this.stopAI = function() {
            clearTimeout(AITimeouter)
        };

        this.initAI = function() {
            setLevel(levelAI);
            getWordNum();
            startAITimer();
            console.log("AI inititialisiert");
        };

        // init
        this.initAI();
    }

    function RandomSolver() {
        var self = this;
        var timeOutRepeat = null;
        var timeOutStart = null;
        var solverMin = 20000;
        var solverMax = 30000;
        var repeater = null;

        startRandomSolver = function () {
            createRepeatRandTime();
            if(foundedWords > 0) {
                setTimeout(function () {
                    if($(".wordlist").length > 0) {
                        whiteFields = $(".white");
                        numOfFields = whiteFields.length;
                        var thisField = whiteFields.eq(Math.floor(Math.random() * numOfFields));
                        while (thisField.children("span").hasClass("spiral") == true) {
                            whiteFields.eq(Math.floor(Math.random() * numOfFields));
                        }
                        thisField.toggleClass("random-solver");
                        currentLetter = thisField.children();
                        thisField.delay(100).prepend('<img class="s-img" src="http://www.wordsearch-game.com/img/icons/solver.png" />');
                        currentLetter.css({display: "none"});
                        setTimeout(function () {
                            $(".random-solver").removeClass("random-solver");
                            $(".s-img").remove();
                            currentLetter.css({display: "block"});
                        }, 3000);
                    }
                }, timeOutStart);
                repeater = setTimeout(function () {
                    startRandomSolver();
                }, timeOutRepeat);
            }
        };

        createRepeatRandTime = function() {
            timeOutRepeat = Math.round(Math.random() * (solverMax - solverMin)) + solverMin;
        };

        createRandTime = function() {
            timeOutStart = Math.round(Math.random() * (5000 - 0)) + 0;
        };

        this.resetSolver = function () {
            clearTimeout(repeater);
        };

        this.initRandomSolver = function() {
            startRandomSolver();
        };


        createRandTime();
        createRepeatRandTime();
    }
    ////
    ////

    //// GAME ENGINE
    this.initGame = function() {
        setTimeout(function() {
            if(mobile == "1") {
                selector = ":first";
            }
            var url = AJAX_ROOT + "game/game-singleplayer.php";
            console.log(levelId);
            $.ajax({
                type: "POST",
                url: url,
                data: {id: levelId},
                success: function (field) {
                    outerFrame.append(field);
                    secLevel.animate({opacity: 0}, 200, function() {
                        secLevel.css({display: "none"});
                    });
                },
                error: function () {
                    confirm("Loading-Error: System could not create game!\n\n Please try later again!");
                    window.location.reload();
                }
            }).done(function() {
                self.initGameField();
                setTimeout(function() {
                    outerFrame.css({display: "block" }).animate({opacity: 1}, 100);
                }, 1000);
                startModal.css({display: "block"}).animate({opacity: 1}, 600);
            });
            return false;
        }, 300);
    };

    // INIT GAME FIELD
    var uiMode = null;
    this.initGameField = function() {
        uiLevel = $(".choice");
        uiMode = $(".mode");
        if(mobile == "1") {
            levelId = levelArrayMob[level];
        }
        uiLevel.html(levelId);
        if(levelAI != 0) {
            uiMode.html("AI:"+ levelAI);
        } else {
            uiMode.html("Time Game");
        }

    };

    //INIT GAME SYSTEMATIC
    this.initGameSystematic = function() {
        foundedWords = 0;
        sec = 0;
        self.resetVars();
        randomSolver.resetSolver();
        randomSolver = null;
        randomSolver = new RandomSolver();
        errorHandler.resetMistakes();
        startTime = new Date().getTime();
        clock.stopClock();
        clock.resetClock();
        clock.startClock();
    };


    // USER EVENTS
    // START GAME
    $(document).on("click" || "touchstart ", "#game-start", function (e) {
        e.preventDefault();
        if(touched == false) {
            touched = true;
            self.setTouchOut();
            self.resizeGame();
            self.initGameSystematic();
            setTimeout(function () {
                startModal.animate({opacity: 0}, 100, function () {
                    startModal.css({display: "none"});
                    gameWrapper.css({display: "block"}).animate({opacity: 1}, 100);
                });
            }, 500);
        }
        // init cpu AI
        if(game == 1) {
            ai = new AI();
            /* ai.startAITimer() */
        }
    });


    $(document).on("click" || "touchstart ", ".close-game", function (e) {
        e.preventDefault();
        if(touched == false) {
            touched = true;
            self.setTouchOut(100);
            var contentWrapper = $("#content-wrapper");
            var pageMenu = $("#menu-left");
            action = $(this).attr("class").split(" ").shift();
            var pageHead = $("#headline");
            var pos = "-10px";
            switch (action) {
                case "restart":
                    self.initGame();
                    break;
                case "front":
                    self.initGameSystematic();
                    setTimeout(function() {
                        var page = new Page();
                    },100);
                    if (mobile == "1") {
                        pageHead = $("#page-head");
                        pos = 0
                    } else {
                        pageMenu.css({display: "block", opacity: 1}).animate({left: pos}, 100, function () {
                        });
                    }
                    pageHead.css({display: "block"}).animate({opacity: 1, top: "0"}, 100, function () {
                        contentWrapper.css({display: "block"}).animate({opacity: 1}, 100);
                    });
                    break;
            }
                if (finalResultFrame !== null) {
                finalResultFrame.animate({opacity: 0}, 250, function () {
                    finalResultFrame.remove();
                    finalResultFrame = null;
                    modalWrapper.animate({opacity: 0}, 250, function () {
                        modalWrapper.css({display: "none"});
                    });
                });
            } else if (finalEntryFrame !== null) {
                finalEntryFrame.animate({opacity: 0}, 250, function () {
                    finalEntryFrame.remove();
                    finalEntryFrame = null;
                    modalWrapper.animate({opacity: 0}, 250, function () {
                        modalWrapper.css({display: "none"});
                    });
                });
            } else {
                removeGame(300);
            }
        }
        $(".closer").delay(200).click();
    });

    function removeGame(time) {
        setTimeout(function() {
            gameMegaWrapper.animate({opacity: 0}, 250, function () {
                setTimeout(function () {
                    gameMegaWrapper.remove();
                }, 300);
            });
        }, time);
    }

    $(document).on("click", '#game-center table tbody tr td', function () {
        if($(this).hasClass("random-solver") == false) {
            checkClickOnField($(this));
        }
    });

    $(document).on("click" || "touchstart ", ".random-solver", function(e) {
        e.preventDefault();
        if (touched == false) {
            touched = true;
            self.setTouchOut();
            var wordlist = $(".wordlist");
            var word = wordlist.eq(Math.floor(Math.random() * wordlist.length));
            var wordId = word.attr("id");
            if(mobile == 1) {
                ($('.orangeMenu').length > 0) ? wordId = $(".orangeMenu").attr('id') : wordId = $(".wordlist").eq(0).attr('id');
            }
            var whiteFields = $("#game-center table tbody tr td");
            $.each(whiteFields, function () {
                var selfHere = this;
                var dataIds = $(this).attr("data-id").split(", ");
                for(var i = 0; i < dataIds.length; i++) {
                    if (dataIds[i] == wordId && ($(selfHere).hasClass("green") == false || $(selfHere).hasClass("orange")) == true) {
                        if($(selfHere).hasClass("orange") == true) {
                            $(selfHere).toggleClass('orange').toggleClass('white');
                        }
                        $(selfHere).toggleClass("green").toggleClass("white");

                    }
                }
            });
            $(".s-img").remove();
            var solverField = $(".random-solver");
            currentLetter.css({display: "block"});
            setTimeout(function() {
                solverField.removeClass("random-solver");
            }, 60);
        }
        checkClickOnField("",wordId);
    });

    var greenLetters = [];
    function checkClickOnField(that, processId) {
        processId = (typeof processId === 'undefined') ? "default" : processId;
        var inMenu = false;
        if(processId == 'default' && that != '') {
            if (touched == false) {
                touched = true;
                self.setTouchOut();
                var ids = that.attr('data-id');
                ids = ids.split(', ');
                var clickedField = that;
                //
                if(clickedField.hasClass("green")) {
                    var mainId = that.attr("id");
                    greenLetters.push(mainId);
                }
                var clickedLetter = that.text().charAt(0);
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
                        currentWordPiece = clickedLetter;
                        if(volume == true) {
                            playSound('found');
                        }
                        clickCount++;
                    } else {
                        if(volume == true) {
                            playSound('error');
                        }
                        currentWord.removeAttr("class").toggleClass("wordlist");
                        currentWordPiece = "";
                        errorHandler.throwGameError();
                        currentWord = null;
                        clickCount = 0;
                        return false;
                    }
                } else {
                    var orangeMenu = $(".orangeMenu");
                    orangeMenu.each(function () {
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
                        if(volume == true) {
                            playSound('error');
                        }
                        $(".orange").removeAttr("class").toggleClass("white");
                        $.each(greenLetters, function(index, value) {
                            $("#"+value).removeAttr("class").toggleClass("green");
                        });
                        greenLetters = [];
                        $(".orangeMenu").removeAttr("class").toggleClass("wordlist");
                        errorHandler.throwGameError();
                        clickCount = 0;
                        currentWord = null;
                        currentWordPiece = "";
                        return false;
                    } else {
                        if(volume == true) {
                            playSound('found');
                        }
                        clickedField.removeAttr("class").toggleClass("orange");
                        currentWordPiece = currentWordPiece + clickedLetter;
                        clickCount++;
                    }
                    if (currentWordPiece === orangeMenu.text()) {
                        if(volume == true) {
                            setTimeout(function() { playSound('word-found'); }, 700);
                        }
                        foundedWords = foundedWords +1;
                        if(foundedWords == "1") {
                            randomSolver.initRandomSolver();
                        }
                        currentWordPiece = "";
                        var orange = $(".orange");
                        var i = 0;
                        interval = setInterval(function () {
                            orange.eq(i).removeAttr("class").toggleClass("green");
                            if (orange.length == 0) {
                                clearInterval(interval);
                            }
                            i++;
                        }, 150);
                        greenLetters = [];
                        $('.orangeMenu').removeAttr("class").toggleClass("closed");
                        if (mobile == "1") {
                            $(".closed").remove();
                        }
                        clickCount = 0;
                    }
                }
            }
        } else {
            if(volume == true) {
                setTimeout(function() { playSound('word-found'); }, 100);
            }
            $('#'+processId).removeAttr("class").toggleClass("closed").removeClass("wordlist");
            if (mobile == "1") {
                $(".closed").remove();
                // add here: output "You have to find still x words"
            }
        }
        if (( $('.wordlist').length == 0) && ($('.orangeMenu').length == 0)) {
            ai.stopAI();
            $("#game-overlay").css({zIndex: 11000});
            playTime = new Date().getTime() - startTime;
            clock.stopClock();
            self.finishGame("won");
        }
    }

    function playSound(filename){
        document.getElementById("sound").innerHTML='<audio autoplay="autoplay">' +
        '<source src="sounds/' + filename + '.ogg" type="audio/ogg" />' +
        '<source src="sounds/' + filename + '.m4a" type="audio/mp4" />' +
        '<source src="sounds/' + filename + '.aac" type="audio/mp4" />' +
        '<embed hidden="true" autostart="true" loop="false" src="sounds/' + filename +'.mp3" />' +
        '</audio>';
    }


    this.setLevel = function(id) {
        levelId = id;
    };

    this.resetVars = function() {
        foundedWords = 0;
        clickCount = 0;
        currentWord = "";
        currentWordText = "";
        currentWordId = "";
        currentWordPiece = "";
        currentWordLetter = "";
    };

    this.finishGame = function(state) {
        finalStateFrame = $("#final-state-frame");
        if(levelAI == 0) {
            var url = AJAX_ROOT + "highscore-check.php";
            $.ajax({
                type: "POST",
                url: url,
                data: {
                    time: playTime,
                    mistakes: errorHandler.returnMistakes()
                },
                success: function (data) {
                    $("#bwc-modal-underlay").append(data);
                }
            }).done(function () {
                finalStateFrame.append("You solved the puzzle!");
                $("#normal-final-menu").css({display:"block"});
            });
        } else {
            if(state == "lost") {
                finalStateFrame.append("You have lost :( !");
            } else {
                finalStateFrame.append("You have won against the AI ("+ levelAI +")");
            }
        }
        $("#ai-final-menu").css({display:"block"});
        gameWrapper.animate({opacity: 0}, 500, function () {
            finalStateFrame.css({display:"block"}).animate({opacity: 1}, 500);
        });
        return false;
    };

    $(document).on("click", "#list-me", function(e) {
        e.preventDefault();
        if(touched == false) {
            touched = true;
            self.setTouchOut();
            finalResultFrame.animate({opacity: 0}, 100, function () {
                finalResultFrame.remove();
                finalResultFrame = null;
                var url = AJAX_ROOT + "highscore-insert.php";
                $.ajax({
                    type: "POST",
                    url: url,
                    data: {time: playTime},
                    success: function (data) {
                        $("#bwc-modal-underlay").append(data);
                    }
                }).done(function () {
                    finalEntryFrame = $(".final-entry-frame");
                    $(".final-entry").click().remove();
                });
            });
        }
    });

    this.resizeGame = function () {
        headerHeight = 130;
        gameWrapper = $(".game-wrapper");
        gameMegaWrapper = $("#game-mega-wrapper");
        gameField = $("#game-center table");
        row = $("#game-center table tbody tr");
        cell = $("#game-center table tbody tr td");
        gameHeight = $(window).height() - headerHeight;

        if (mobile == "0") {
            if(gameHeight > 500) {
                gameHeight = 500;
            }
            gameWidth = gameHeight + headerHeight + 230;
            gameWrapper.css({width: gameWidth + "px"});
            gameField.css({width: gameHeight + "px", "height": gameHeight+"px"});
            cellWidth = (gameHeight / row.length) - 6;
            if(row.length < 13) {
                cellWidth = cellWidth-5;
            }

            pad = 5;
            fs = 6;
            fsw = 14;
            if(row.length > 13) {
                pad = 2;
                fs = 4;
            }
            if(row.length > 16) {
                pad = 0;
                fsw = 11;
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

    var aI = null;
    // INIT
    // INIT RESIZE GAME

    self.initGame();
    $(window).resize(function () {
        self.resizeGame()
    });
}