var page;
var multiplayerRoom;

function MultiplayerRoom() {

    var consoleMsg = $("#console-header-msg");
    var alertImg = $("#alert-img");
    var self = this;
    var inviteReplacer = $("#replace-invitation");
    var awaitAnswer = false;
    var permanentCheck = false;
    var consoleUser = $("#user-console");
    var consoleReplacer = $("#replacer-console");
    var requestId ;
    var member;
    var outstandingInvitation = $("#outstanding-invitation");

    function cancelInvitation() {
        $.post("<?php echo $_SESSION['root']; ?>php/ajax/multiplayer/game-cancel-invite.php");
        return false;
    }
    $(document).on("click", ".answer-call", function() {
        if ($(this).val() == "play") {
            url = "<?php echo $_SESSION['root']; ?>php/ajax/game/game-multiplayer.php";
            $.ajax({
                type: "POST",
                url: url,
                success: function (data) {
                    (data.indexOf("red-color") > 0) ? consoleReplacer.html(data) : window.location = "<?php echo $_SESSION['root']; ?>multiplayer/game/index.php?gameId="+data;
                }
            });
        } else {
            url = "<?php echo $_SESSION['root']; ?>php/ajax/multiplayer/game-reject.php";
            $.ajax({
                type: "POST",
                url: url,
                success: function (data) {
                    (data.indexOf("red-color") > 0) ? consoleReplacer.html(data) : consoleReplacer.html("<p class='aligner'>The request was rejected!</p>");
                    $(".answerBox").remove();
                    setTimeout(function () {
                        consoleReplacer.animate({opacity: 0}, 100, function () {
                            consoleReplacer.html("");
                            consoleMsg.css({display: "none"});
                        });
                    }, 5000);
                }
            });
        }
        return false;
    });

    var index = 0;
    function waitForAnswer() {

        var inviteReplacer = $("#replace-invitation");
        var open  = false;
        awaitAnswer = false;
        var gameId = null;
        var url = "<?php echo $_SESSION['root']; ?>php/ajax/multiplayer/game-wait-answer.php";
        $.ajax({
            type: "POST",
            url: url,
            success: function (data) {
                index++;
                console.log(data);
                if(data) {
                    if (data.indexOf("rejected") > -1) {
                        inviteReplacer.html("<p class='aligner'>Sorry, your game partner don't want to play right now. Ask later!</p>");
                        cancelInvitation();
                    } else if (data.indexOf("waiting") > -1) {
                        awaitAnswer = true;
                        index++;
                        if (index == 40) {
                            index = 0;
                            cancelInvitation();
                            inviteReplacer.html("<p class='color-red aligner'>The user seems not to answer! We closed this request!</p>");
                        }
                    } else if(data != "0") {
                        setTimeout(function(){
                            window.location = "<?php echo $_SESSION['root']; ?>multiplayer/game/index.php?gameId="+data;
                        }, 2000);
                        inviteReplacer.html("<p class='aligner'>You will forwarded to the game right now!</p>");
                    }
                }
            }
        }).done(function () {
            if($("#"+requestId).length > 0 && awaitAnswer == true) {
                console.log("q");
                setTimeout(function() {
                    waitForAnswer();
                }, 2000);
            }
            if($("#"+requestId).length == 0) {
                cancelInvitation();
                inviteReplacer.html("<p class='aligner'>Sorry, your game partner is offline. Ask someone other!</p>");
            }
        return false;
        });
    }

    /* public */
    this.sendInvitation = function (e) {
        var inviteReplacer = $("#replace-invitation");
        var url = "<?php echo $_SESSION['root']; ?>php/ajax/multiplayer/game-invite-user.php";
        $.ajax({
            type: "POST",
            url: url,
            data: {
                id: requestId,
                member: member
            },
            success: function (data) {
                if(data.indexOf("red-color") > -1) {
                    inviteReplacer.html(data);
                    $(".invitation .opener").click();
                } else if(data.indexOf("triggerCheckUserState") > -1) {
                    outstandingInvitation.css({display: "block", opacity: 1});
                    setTimeout(function () {
                        outstandingInvitation.animate({opacity: 0}, 1000)
                    }, 1000, function() { outstandingInvitation.css({ display: "block"}) }, 5000);
                    checkUserState();
                } else {
                    waitForAnswer();
                    $(".invitation .opener").click();
                    inviteReplacer.html(data);
                }
            }
        });
        return false;
    };

    checkUserState = function() {
        var idsInList = [];
        var i;
        var num = $(document).find(".user-box-multiplayer").length;
        var url = "<?php echo $_SESSION['root']; ?>php/ajax/multiplayer/game-check-user-state.php";
        $.ajax({
            type: "POST",
            url: url,
            global:false,
            success: function (data) {
                console.log(data);
                var dataArray =  data.split("|");
                if(dataArray[0].indexOf("answerBox") > -1) {
                    consoleReplacer.html(dataArray[0]).css({display:"block"}).animate({opacity: 1}, 150);
                    consoleMsg.css({display:"block"});
                    alertImg.animate({opacity:1}, 250);
                }
                dataArray[1] = jQuery.parseJSON(dataArray[1]);

                for(i=0; i < num; i++) {
                    idsInList.push($(".user-box-multiplayer").eq(i).attr("id"));
                }
                $.each(idsInList, function(index, value) {
                   if(dataArray[1].indexOf(value) == -1){
                       $("#"+value).animate({width: 0, height: 0, opacity: 0}, 200, function() {
                           $("#"+value).remove();
                       })
                   }
                });
                $.each(dataArray[1], function(index, value) {
                    if(idsInList.indexOf(value) == -1){
                        $(".content-holder").append('<div class="user-box-multiplayer guest" id="'+ value+'"><div class="user-multiplayer-info guest"><a href="#" title="edit your profile picture"><img class="user-multiplayer-avatar" src="../img/user/profile/guest.jpg" title="default avatar image" alt="default avatar image"/></a> <p>Guest #'+ value+'</p></div><div class="hidden-multiplayer-invite-box aligner">Invite</div></div>');
                    }
                });
                dataArray[2] = jQuery.parseJSON(dataArray[2]);
                if(dataArray[2] != null){
                    $.each(idsInList, function (index) {
                        if (idsInList.indexOf(dataArray[2][index].user_id) == -1) {
                            $("#" + dataArray[2][index].user_id).animate({
                                width: 0,
                                height: 0,
                                opacity: 0
                            }, 200, function () {
                                $("#" + dataArray[2][index].user_id).remove();
                            })
                        }
                    });
                    if (dataArray[2].length > 0) {
                        $.each(dataArray[2], function (index) {
                            console.log(dataArray[2][index].user_id);
                            var picPath;
                            if (idsInList.indexOf(dataArray[2][index].user_id) == -1) {
                                if (dataArray[2][index].user_picture == "1") {
                                    picPath = "<?php echo $_SESSION['root']; ?>img/user/profile/" + dataArray[2][index].user_name + ".jpg";
                                } else {
                                    picPath = "<?php echo $_SESSION['root']; ?>img/user/profile/guest.jpg";
                                }
                                $(".content-holder").append('<div class="user-box-multiplayer member" id="' + dataArray[2][index].user_id + '"><div class="user-multiplayer-info member"><a href="#" title="edit your profile picture"><img class="user-multiplayer-avatar" src="' + picPath + '" title="default avatar image" alt="default avatar image"/></a> <p>' + dataArray[2][index].user_name + '</p></div> <div class="hidden-multiplayer-invite-box aligner">Invite</div></div>');
                            }
                        });
                    }
                }
            }
        }).done(function () {
            var num2 = $(document).find(".user-box-multiplayer").length;
            if(num2 !== num)
            setTimeout(function(){
                $("#user-count").fadeOut(100).text(num2).fadeIn(100);
            },500);
        });
        return false;
    };

    var consoleOpen = false;
    $(document).on("click", "#console-header", function() {
        $("#console-header-menu").addClass("rotated");
        if(consoleOpen == false) {
            $("#console-header-menu").addClass("rotated");
            consoleUser.animate({bottom: 250}, 250);
            consoleOpen = true;
        } else {
            $("#console-header-menu").removeClass("rotated");
            consoleUser.animate({bottom: -4}, 250);
            consoleOpen = false;
        }
    });

    function stopCheckUserState() {
        clearInterval(permanentCheck);
    }

    this.startCheckUserState = function() {
        permanentCheck = setInterval(function () {
            checkUserState();
            console.log("check");
        }, 15000);
    };

    // INTERACTION
    $(document).on("click", ".user-box-multiplayer", function(e) {
        requestId = $(this).attr("id");
        member = $(this).find(".membername");
        (member.length > 0) ? member = member.text() : member = false;
        multiplayerRoom.sendInvitation(e);
    });

    $(document).on("click", "#bwc-closer-invitation", function(e) {
        setTimeout(function() {
            inviteReplacer.html("<p class='aligner'>No invitation activity!</p>");
        }, 300);
    });
}

// document ready
$(document).ready(function() {
    page = new Page();
    multiplayerRoom = new MultiplayerRoom();
    multiplayerRoom.startCheckUserState();
});