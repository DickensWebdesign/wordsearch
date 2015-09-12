<?php
require_once("../php/header.php");
$time = time()-20; // 20 seconds
$mob = $_SESSION["mobile"];
$query = "DELETE FROM crossword_multiplayer_user WHERE time_action <= $time";
$result = $db->query($query);
if($_SESSION['logged_in'] === true AND (!isset($_SESSION['user_id_multi']) || $_SESSION['user_id_multi'] !== $_SESSION['user_id'])) {
    if(isset($_SESSION['user_id_multi'])) {
        $id = (int)$_SESSION['user_id_multi'];
        $id = $db->real_escape_string($id);
        $query = "DELETE FROM crossword_multiplayer_user WHERE user_id = '$id'";
        $result = $db->query($query);
    }
    $_SESSION['user_id_multi'] = $_SESSION['user_id'];
}
if(!isset($_SESSION['user_id_multi']) && $_SESSION['logged_in'] === false) {
    $_SESSION['user_id_multi'] = time();
}
$userCountGuest = $userCount = 0;
$now = time();
$id = (int)$_SESSION['user_id_multi'];
$id = $db->real_escape_string($id);
?>
<meta charset="utf-8" />
<?php if($_SESSION['mobile'] == false) { ?>
    <meta property="og:type" content="website" />
    <meta property="og:url" content="http://www.wordsearch-game.com" />
    <meta property="og:title" content="Wordsearch Puzzle Online - The Game | Free Play" />
    <meta property="og:description" content="Wordsearch Puzzle - The Online Game. This wordsearch game is free to play around the world! Made with love to enjoy young and old. Like and share with friends!" />
    <meta property="og:image" content="<?php echo $_SESSION['root']; ?>img/others/play-wordsearch-now.png" />
<?php } ?>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
<link rel="image_src" href="../img/share/c-fb.png" />
<meta name="description" content="wordsearch - Multiplayer Wordsearch Puzzle at wordsearch-Online.eu!">
<meta name="keywords" content="wordsearch, game, Multiplayer, Online ">
<meta name="author" content="wordsearch-game.com">
<meta name="robots" content="index,follow">
<meta name="revisit-after" content="7 days">
<meta name="geo.placename" content="Pinneberg">
<meta name="geo.region" content="DE-SH">
<title>Wordsearch Puzzle Online - Multiplayer</title>
<link rel="canonical" href="http://www.wordsearch-game.com" />
<link rel="stylesheet" href="<?php echo $_SESSION['root']; ?>layout/layout<?php echo $_SESSION['mobPath']; ?>.css" type="text/css" />
<?php if($_SESSION['mobile'] == true) { ?>
    <link rel="apple-touch-icon-precomposed" href="<?php echo $_SESSION['root']; ?>icons/mobile/apple-touch-icon.png" />
<?php } ?>
<link rel="icon" type="image/x-icon" href="<?php echo $_SESSION['root']; ?>icons/favicon.png">
</head>
<body>
<?php if($_SESSION['mobile'] == false) { ?>
    <div id="fb-root"></div>
<?php } ?>
<script>
    <?php if($_SESSION['mobile'] == false) { ?>
    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/de-DE/sdk.js#xfbml=1&appId=838324999520495&version=v2.0";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
    <?php } ?>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-33656348-2', 'auto');
    ga('send', 'pageview');
</script>
<div id="main-content-wrapper">
    <div id="page-head">
        <div id="headline">
        <?php
        if($_SESSION['logged_in'] == true) {
            if($userSettings[0]['user_picture'] == false) { ?>
                <a href="<?php echo $_SESSION['root']; ?>memberarea/" title="Edit your profile picture!"><img class="head-avatar" src="<?php echo $_SESSION['root']; ?>img/user/profile/guest.jpg" title="Default avatar image!" alt="default avatar image"/></a>
            <?php } else { ?>
                <a href="<?php echo $_SESSION['root']; ?>memberarea/" title="Edit your profile picture!"><img class="head-avatar" src="<?php echo $_SESSION['root']; ?>img/user/profile/<?php echo $_SESSION['user_name'] ?>-small.jpg" title="Your current avatar image!" alt="your avatar image"/></a>
                <?php if($_SESSION['mobile'] == false) { ?>
                    <a class="menu-log" href="<?php echo $_SESSION['root']; ?>memberarea/" title="Visit the members lounge!">Members lounge</a>
                    <a class ="menu-log" href="<?php echo $_SESSION['root']; ?>memberarea/personal-wordsearch-highscore" title="Visit your personal game overview!">Your Top 10</a>
                <?php } }
        } else { ?>
            <a href="#login-user" class="login opener" title="Register to edit your own profile picture!"><img class="head-avatar" src="<?php echo $_SESSION['root']; ?>img/user/profile/guest.jpg" title="Default avatar image!" alt="default avatar image"/></a>
                <?php if($_SESSION['mobile'] == false) { ?>
                <a href="#login-user" class="login opener menu-log" title="Login at wordsearch-online.eu!">Login</a>
                <a href="#login-user" class="register opener menu-log" title="Register at wordsearch-online.eu!">Register</a>
            <?php }
        }  ?>
        <a href="http://www.wordsearch-game.com" title="Wordsearch main page!"><img class="logo"
            <?php
            if($_SESSION['mobile'] == false) {
                echo ' src = "'.$_SESSION['root'].'/img/logos/wordsearch-logo.png" ';
            } else {
                echo ' src = "'.$_SESSION['root'].'/img/logos/c-120.jpg" ';
            }
            echo 'title="wordsearch - The Online Game!" alt="wordsearch - The Online Game" /></a>';
            if($_SESSION['mobile'] == false) {
                echo '<span>... MULTIPLAYER!</span>';
            } else { ?>
            <div class="header-menu">
                <?php if($_SESSION['logged_in'] == true) {
                    echo '<a href="#logout-user" class="Logout opener" title="Logout!">Logout</a>';
                    echo '<a href="/memberarea/" title="Go to your personal members lounge!">Members lounge</a>';
                } else {
                    echo '<a href="#register-opener" class="register opener" title="Register at Wordsearch Puzzle!">Register</a>';
                    echo '<a href="#login-user" class="login opener" title="Login at wordsearch online!">Login</a>';
                }
                echo '</div>';
                }
                if($_SESSION['mobile'] == false) { ?>
                    <img id="menu-right-button" src="<?php echo $_SESSION['root']; ?>img/icons/menu-button.png" title="Open/close the menu!" alt="Menu" />
                <?php } ?>
            </div>
        </div>
    </div>
    <div id="main-content">
        <?php if($_SESSION['mobile'] == false) { ?>
            <div id="menu-left">
                <ul>
                    <li><a href="<?php echo $_SESSION['root']; ?>/index.php" title="Back to the Wordsearch Puzzle">Singleplayer</a></li>
                </ul>
                <hr />
                <ul>
                    <li><p class="fb-like" data-href="https://www.facebook.com/pages/wordsearch-Online/272183802972264?ref=hl" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></p></li>
                    <li><p class="fb-share-button" data-href="http://www.wordsearch-game.com" data-layout="button_count"></p></li>
                    <li class="g-plus-padder"><p class="g-plusone" data-size="standard" data-count="true"></p></li>
                    <li><a class="twitter-share-button" title ="Tweet on Twitter" href="https://twitter.com/share">Tweet</a></li>
                </ul>
            </div>
            <div id="menu-right">
                <hr />
                <ul>
                    <li><a href="../faqs-about-wordsearch" title="Read the Multiplayer game rules!">MP Rules</a></li>
                    <li><a href="../faqs-about-wordsearch" title="Find help! FAQs about community- and site ">Help</a></li>
                </ul>
                    <hr />
                <ul>
                    <li><a class="feedback opener" href="#feedback-user" title="Faced problems? Send us a feedback">Feedback</a></li>
                    <li><a href="../donate-for-wordsearch" title="Donate for the development of this game">Donate</a></li>
                    <li><a href="../wordsearch-puzzle-disclaimer" title="See our disclaimer">Disclaimer</a></li>
                </ul>
                <hr />
                <ul><li><a href="#logout-user" class="logout opener">Logout</a></li></ul>
            </div>
        <?php } ?>
        <div id="content-wrapper">
            <div class="content-box">
                <h1>Wordsearch Puzzle Multiplayer</h1><hr />
                <div class="content-holder view">
                    <?php
                    $query = "SELECT user.user_id, user.user_name, user.user_picture FROM user INNER JOIN crossword_multiplayer_user ON user.user_id = crossword_multiplayer_user.user_id AND crossword_multiplayer_user.mobile = '$mob'AND crossword_multiplayer_user.guest = '0'";
                    $userCount = 0;
                    if ($result = $db->query($query)) {
                        while ($row = $result->fetch_assoc()) {
                            $data[$userCount] = $row;
                            $userCount++;
                        }
                        $result->free();
                    }
                    $query = "SELECT * FROM crossword_multiplayer_user WHERE NOT user_id = '$id' AND `guest` = '1'";
                    $userCountGuest = 0;
                    if ($result = $db->query($query)) {
                        while ($row = $result->fetch_assoc()) {
                            $dataGuest[$userCountGuest] = $row;
                            $userCountGuest++;
                        }
                        $result->free();
                    }
                    $userCounter = $userCount + $userCountGuest;
                    ?><h2 class="content-header-ultra">User Online:<span class="green-color" id="user-count"><?php echo $userCounter+3; ?></span></h2>
                    <p>Choose and invite a player to play with you!</p><hr />
                    <div class="user-box-multiplayer" id="1">
                        <div class="user-multiplayer-info guest"><a href="#" title="edit your profile picture"><img class="user-multiplayer-avatar" src="../img/user/profile/guest.jpg" title="default avatar image" alt="default avatar image"/></a>
                            <p>MarkS</p></div>
                        <div class="hidden-multiplayer-invite-box aligner">
                            Invite
                        </div></div>
                        <div class="user-box-multiplayer" id="2">
                        <div class="user-multiplayer-info guest"><a href="#" title="edit your profile picture"><img class="user-multiplayer-avatar" src="../img/user/profile/guest.jpg" title="default avatar image" alt="default avatar image"/></a>
                            <p>Terence</p></div>
                        <div class="hidden-multiplayer-invite-box aligner">
                            Invite
                        </div></div>
                        <div class="user-box-multiplayer" id="3">
                        <div class="user-multiplayer-info guest"><a href="#" title="edit your profile picture"><img class="user-multiplayer-avatar" src="../img/user/profile/guest.jpg" title="default avatar image" alt="default avatar image"/></a>
                            <p>Lazysolver44</p></div>
                        <div class="hidden-multiplayer-invite-box aligner">
                            Invite
                        </div></div>
                    <?php
                    if($userCount != 0 || $userCountGuest != 0) {
                        if ($userCount != 0) {
                            foreach ($data as $user) {
                                if($user['user_id'] != $id) {
                                    ?>
                                    <div class="user-box-multiplayer" id="<?php echo $user['user_id']; ?>">
                                    <div class="user-multiplayer-info member"><a href="#" title="edit your profile picture"><img class="user-multiplayer-avatar"
                                            <?php
                                            if ($user['user_picture'] == false) {
                                                echo ' src="../img/user/profile/guest.jpg" title="default avatar image" alt="default avatar image"/>';
                                            } else {
                                                echo ' src="../img/user/profile/' . $user['user_name'] . '.jpg" title="Avatar "' . $user['user_name'] . '" alt="Avatar image"/>';
                                            } ?>
                                        </a><p class="membername"><?php echo $user['user_name']; ?></p></div>
                                        <div class="hidden-multiplayer-invite-box">
                                            <p class="aligner">Invite</p>
                                        </div>
                                    </div>
                                <?php
                                }
                            }
                        }
                        if($userCountGuest != 0) {
                            foreach ($dataGuest as $user) { ?>
                                <div class="user-box-multiplayer" id="<?php echo $user['user_id']; ?>">
                                    <div class="user-multiplayer-info guest"><a href="#" title="edit your profile picture"><img class="user-multiplayer-avatar" src="../img/user/profile/guest.jpg" title="default avatar image" alt="default avatar image"/></a>
                                <p>Guest #<?php echo $user['user_id']; ?></p></div>
                                <div class="hidden-multiplayer-invite-box">
                                    <p class="aligner">Invite</p>
                                </div></div>
                            <?php }
                        }
                    } ?>
                </div><hr />
                <div class="clearer-doubled"></div>
            </div>
        </div>
    </div>
    <div id="user-console-wrapper">
    <div id="outstanding-invitation">We couldn't send an invitation!<br />You have to reply an outstanding invitation.</div>
        <div id="user-console">
            <div id="console-header">
                <div id="console-header-msg">
                    <img src="<?php echo $_SESSION['root']; ?>img/icons/msg-alert.jpg" id="alert-img"/>
                    <p id="console-header-content">You have a new invitation!</p>
                </div>
                  <img src="<?php echo $_SESSION['root']; ?>img/icons/arrow-up.png" id="console-header-menu" />
            </div>
             <div id="replacer-console"></div>
        </div>
    </div>
</div>
<?php
require_once '../php/forms.php';
require_once "../php/footer.php";
($_SESSION['logged_in'] === false) ? $guest = 1 : $guest = 0;
$query = "SELECT user_id FROM crossword_multiplayer_user WHERE user_id = $id";
$result = $db->query($query);
$row = $result->fetch_array();
if ($row === null) {
    $query = "INSERT INTO crossword_multiplayer_user (user_id, mobile, time_action, guest) VALUES ('$id', '$mob', '$now', '$guest')";
    $db->query($query);
} else {
    $query = "UPDATE crossword_multiplayer_user SET time_action = $now, invite_id = '0' WHERE user_id = $id";
    $result = $db->query($query);
} ?>