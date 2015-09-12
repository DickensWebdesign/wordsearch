var page;
var multiplayerRoom;
function MultiplayerRoom() {

    var inviteReplacer = $("#replace-invitation");
    var awaitAnswer = false;
    var permanentCheck = false;
    var consoleUser = $("#user-console");
    var url = "<?php echo $_SESSION['root']; ?>php/ajax/multiplayer/";

    // permanent while online to get messages
    function checkOnlineUser() {
        permanentCheck = setInterval(function() {
            var url = url+"check-online-user.php";
            $.ajax({
                type: "POST",
                url: url,
                success: function (data) {

                }
            }).done(function () {
                //
            });
            return false;
        }, 10000);
    }

    this.startCheckUserState = function() {
        permanentCheck = setInterval(function () {
            checkUserState();
            console.log("check");
        }, 5000);
    };

    function stopCheckOnlineUser() {
        clearInterval(permanentCheck);
    }


    $(document).on("click", ".answer-call", function() {
        if ($(this).val() == "play") {
            url = url+"game-creator.php";
            $.ajax({
                type: "POST",
                url: url,
                success: function (data) {
                    (data.indexOf("red-color") > 0) ? consoleUser.html(data) : window.location = "<?php echo $_SESSION['root']; ?>multiplayer/game/index.php?gameId="+data;
                }
            });
            return false;
        } else {
            url = url+"game-rejected.php";
            $.ajax({
                type: "POST",
                url: url,
                success: function (data) {
                    (data.indexOf("red-color") > 0) ? consoleUser.html(data) : window.location = "<?php echo $_SESSION['root']; ?>multiplayer/game/index.php?gameId="+data;
                }
            });
            return false;
        }
    });

    function waitForAnswer() {
        setTimeout(function() {
            console.log("wait for user");
            var url = "<?php echo $_SESSION['root']; ?>php/ajax/multiplayer/game-wait-for-answer.php";
            $.ajax({
                type: "POST",
                url: url,
                global: false,
                success: function (data) {
                    if(data) {
                        inviteReplacer.find('.loading-info-multi').animate({height:0 }, 200 ,function (){
                            inviteReplacer.css({"display": "none"});
                            inviteReplacer.find('.loading-info').css({"display": "none, "});
                        });
                        awaitAnswer = false;
                        inviteReplacer.replaceWith(data);
                    }
                }
            }).done(function () {
                if(awaitAnswer == true) {
                    $(".invitation.opener").click();
                    waitForAnswer();
                }
            });
            return false;
        }, 1000);
    }

    /* public */
    this.sendInvitation = function (userId, memberId) {
        inviteReplacer.find('.loading-info-multi').css({"display": "block"});
        inviteReplacer.find('.loading-multi').css({"display": "block"});
        var url = "<?php echo $_SESSION['root']; ?>php/ajax/multiplayer/game-invite-user.php";
        $.ajax({
            type: "POST",
            url: url,
            data: {
                id: userId,
                member: memberId
            },
            success: function (data) {
                inviteReplacer.replaceWith(data);
            }
        }).done(function () {
            $(".invitation .opener").click();
            awaitAnswer = true;
            waitForAnswer();
        });
        return false;
    };

    checkUserState = function() {
        var url = "<?php echo $_SESSION['root']; ?>php/ajax/multiplayer/game-check-user-state.php";
        $.ajax({
            type: "POST",
            url: url,
            success: function (data) {
                if(data !== "") {
                    consoleUser.append(data);
                    consoleUser.animate({bottom: "0px"}, 200);
                }
            }
        }).done(function () {
        });
        return false;
    };


    // INTERACTION
    $(document).on("click", ".user-box-multiplayer", function() {
        var member;
        var user = $(this).attr("id");
        member = $(this).find(".membername");
        (member.length > 0) ? member = member.text() : member = false;
        multiplayerRoom.sendInvitation(user, member);
    });
}

// document ready
$(document).ready(function() {
    var mobField = $("#mob");
    var mobile =  mobField.val();
    mobField.remove();
    page = new Page(mobile);
    multiplayerRoom = new MultiplayerRoom();
    $(".view").show();
    var href = window.location.hash;
    if(href) {
        var triggerId = href.split("-").shift().slice(1);
        $("." + triggerId + ".opener").trigger("click");
        $("html, body").animate({scrollTop: 0}, 50);
    }
    multiplayerRoom.startCheckUserState();
});