function GamePrint(cols, words) {

    var self = this;
    var gameExist = false;
    var previewBox = $("#previewBox");
    var previewPaper;

    this.initGame = function() {
        if(gameExist == true) {
            previewPaper.animate({opacity: 0}, 200, function(){
                previewPaper.css({display: "none"}).remove();
                gameExist = false;
            });
        }
        $.ajax({
            type: "POST",
            url: "<?php echo $_SESSION['root']; ?>php/ajax/game/game-print.php",
            data: {
                columns: 10,
                words: 10
            },
            success: function (field) {
                gameExist = true;
                previewBox.append(field);
            },
            error: function () {
                confirm("Loading-Error: System could not create game!\n\n Please try later again!");
                window.location.reload();
            }
        }).done(function() {
            previewPaper = $("#game-wrapper");
            $("#game-center-print table tbody tr").height(100/10 + "%");
            previewPaper.css({display: "block" }).animate({opacity: 1}, 100);
        });
        return false;
    };

    this.resizeGame = function () {
        headerHeight = 130;
        gameWrapper = $("#game-wrapper");
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
            fs = 12;
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
    // INIT
    // INIT RESIZE GAME
    $(window).resize(function () {self.resizeGame()});
    self.initGame();
}