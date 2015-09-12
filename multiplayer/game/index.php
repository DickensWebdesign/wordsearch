<?php
require_once("../../php/header.php");
$error = NULL;
$gameCode = NULL;
$gameId = htmlentities($_GET['gameId']);
if(!isset($_GET['gameId']) || !isset($_SESSION['user_id_multi'])) {
   header("Location: ../");
} else {
    require_once("../../php/connection.php");
    $userId = $_SESSION['user_id_multi'];
    $gameId = htmlentities($_GET['gameId']);
    $query = "SELECT game_id, code_game, num_user FROM crossword_multiplayer WHERE game_id = ?";
    $stmt = $db->prepare($query);
    $stmt->bind_param("s", $gameId);
    if ($stmt->execute()) {
        $stmt->bind_result($id, $code, $userNum);
        if ($results = $stmt->fetch()) {
            $gameIdNew = $id;
            $gameCode = $code;
            $numUser = $userNum; // first time = 0
            $stmt->close();
            $query = "UPDATE crossword_multiplayer SET num_user = num_user+1 WHERE game_id = ?";
            $stmt = $db->prepare($query);
            $stmt->bind_param("s", $gameId);
            $stmt->execute();
            $stmt->close();
        }
        if($gameIdNew !== $_GET['gameId']) $error = true;
    } else {
        $error = true;
    }
    $stmt->close();
    ?>
<meta charset="utf-8"/>
<?php if ($_SESSION['mobile'] == false) { ?>
    <meta property="og:type" content="website"/>
    <meta property="og:url" content="http://www.wordsearch-game.com"/>
    <meta property="og:title" content="Wordsearch Puzzle Online - The Game | Free Play"/>
    <meta property="og:description" content="Wordsearch Puzzle - The Online Game. This wordsearch game is free to play around the world! Made with love to enjoy young and old. Like and share with friends!"/>
    <meta property="og:image" content="<?php echo $_SESSION['root']; ?>img/share/c-fb.png"/>
<?php } ?>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes"/>
<link rel="image_src" href="<?php echo $_SESSION['root']; ?>img/share/c-fb.png"/>
<meta name="description" content="Wordsearch Puzzle - The Online Game. This wordsearch game is free to play around the world! Made with love to enjoy young and old. Like and share with friends!"/>
<meta name="keywords" content="wordsearch, game, Puzzle, free, play, Game, Word, Free, Online, Fun">
<meta name="author" content="wordsearch-game.com">
<meta name="robots" content="index,follow">
<meta name="revisit-after" content="7 days">
<meta name="geo.placename" content="Pinneberg">
<meta name="geo.region" content="DE-SH">
<title>Wordsearch Puzzle Online - Multiplayer | Free Play</title>
<link rel="stylesheet" href="<?php echo $_SESSION['root']; ?>layout/layout<?php echo $_SESSION['mobPath']; ?>.css" type="text/css"/>
<?php if ($_SESSION['mobile'] == true) { ?>
    <link rel="apple-touch-icon" href="<?php echo $_SESSION['root']; ?>icons/mobile/apple-touch-icon.png"/>
<?php } ?>
<link rel="icon" type="image/x-icon" href="<?php echo $_SESSION['root']; ?>icons/favicon.png">
</head>
<body>
<?php if ($_SESSION['mobile'] == false) { ?>
    <div id="fb_root"></div>
<?php } ?>
<script>
    <?php if($_SESSION['mobile'] == false) { ?>
    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s);
        js.id = id;
        js.src = "//connect.facebook.net/de-DE/sdk.js#xfbml=1&appId=838324999520495&version=v2.0";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
    <?php } ?>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
    ga('create', 'UA-33656348-2', 'auto');
    ga('send', 'pageview');
</script>
<div id="main-content-wrapper">
    <div id="page-head">
        <div id="headline">
            <?php
            if ($_SESSION['logged_in'] == true) {
                if ($userSettings[0]['user_picture'] == false) { ?>
                    <a href="/memberarea" title="Edit your profile picture!"><img class="head-avatar"
                                                                                  src="<?php echo $_SESSION['root']; ?>img/user/profile/guest.jpg"
                                                                                  title="Register for your personal avatar!"
                                                                                  alt="default avatar image"/></a>
                <?php } else { ?>
                    <a href="/memberarea" title="Edit your profile picture!"><img class="head-avatar"
                                                                                  src="<?php echo $_SESSION['root']; ?>img/user/profile/<?php echo $_SESSION['user_name'] . $smallPic ?>.jpg"
                                                                                  title="Your current avatar image!"
                                                                                  alt="your avatar image"/></a>
                <?php }
                if ($_SESSION['mobile'] == false) { ?>
                    <div class="menu-log"><a href="/memberarea/" title="Visit the members lounge!">Members lounge</a>
                    </div>
                    <div class="menu-log"><a href="/memberarea/personal-wordsearch-highscore"
                                             title="Visit your personal game overview!">Your Top 10</a></div>
                <?php }
            }
              ?>
        </div>
    </div>
    <div id="main-content">
<?php if($error === NULL) {
            echo $gameCode;
        } else { ?>
        <div id="content-wrapper">
            <div class="content-box"><h2 class="aligner">An error occured!</h2><hr/>
                <p class="color-red aligner">Sorry this game doesn`t exist!</p><hr/>
                <p class="aligner">You can invite someone to play with you! If someone accept your request you will forwarded to a exisitng game!</p>
                <p class="aligner">Please click<a class="content-textlink" href="../" title="Go back to the multiplayer user area">here</a> to return to the multiplayer user area!</p>
            </div>
        </div>
    <?php }
if($numUser == 0) echo '<input type="hidden" id="player-number" value="1" />'; ?>
</div>
<?php
    require_once('../../php/forms.php');
    require_once("../../php/footer.php");
}
if ($error == false) {
    if($numUser > 0) {
        $query = "UPDATE crossword_multiplayer SET game_id = '0' WHERE game_id = ?";
        $stmt = $db->prepare($query);
        $stmt->bind_param("s", $gameId);
        $stmt->execute();
        $stmt->close();
    }
}

?>