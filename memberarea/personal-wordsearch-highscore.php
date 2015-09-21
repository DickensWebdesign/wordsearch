<?php
require_once("../php/header.php"); 
require_once("../lang/en.php"); ?>
<meta charset="utf-8" />
<?php if($_SESSION['mobile'] == false) { ?>
    <meta property="og:type" content="website" />
    <meta property="og:url" content="http://www.wordsearch-game.com" />
    <meta property="og:title" content="Wordsearch Puzzle Online - The Game | Free Play" />
    <meta property="og:description" content="Wordsearch Puzzle - The Online Game. This wordsearch game is free to play around the world! Made with love to enjoy young and old. Like and share with friends!" />
    <meta property="og:image" content="<?php echo $_SESSION['root']; ?>img/others/play-wordsearch-now.png" />
<?php } ?>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
<link rel="image_src" href="<?php echo $_SESSION['root']; ?>img/share/c-fb.png" />
<meta name="description" content="wordsearch - Memberlounge! See your personal statistics of made games at wordsearch-Online.eu!">
<meta name="keywords" content="wordsearch">
<meta name="author" content="wordsearch-game.com">
<meta name="robots" content="index,follow">
<meta name="revisit-after" content="7 days">
<meta name="geo.placename" content="Pinneberg">
<meta name="geo.region" content="DE-SH">
<title>Wordsearch Puzzle Online - Personal Highscore</title>
<link rel="canonical" href="http://www.wordsearch-game.com" />
<link rel="stylesheet" href="<?php echo $_SESSION['root']; ?>layout/layout<?php echo $_SESSION['mobPath']; ?>.css" type="text/css" />
<?php if($_SESSION['mobile'] == true) { ?>
    <link rel="apple-touch-icon-precomposed" href="<?php echo $_SESSION['root']; ?>icons/mobile/apple-touch-icon.png" />
<?php } ?>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:600' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:700' rel='stylesheet' type='text/css'>
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
                if($_SESSION['user_picture'] == false) { ?>
                    <a href="/memberarea" title="edit your profile picture"><img class="head-avatar" src="<?php echo $_SESSION['root']; ?>img/user/profile/guest.jpg" title="default avatar image" alt="default avatar image"/></a>
                <?php } else { ?>
                    <a href="/memberarea" title="edit your profile picture"><img class="head-avatar" src="<?php echo $_SESSION['root']; ?>img/user/profile/<?php echo $_SESSION['user_name'].$smallPic ?>.jpg" title="your current avatar image" alt="your avatar image"/></a>
                <?php }
                if($_SESSION['mobile'] == false) { ?>

                    <a class ="menu-log" href="<?php echo $_SESSION['root']; ?>memberarea/" title="Back to members lounge startpage!"><?php echo $user_img[2]; ?></a>
                    <p class="menu-log green-color" ><?php echo $header_menu[1]; ?></p>
                <?php }} ?>
            <a href="../index.php" title="<?php echo $header_logo[0]; ?>"><img class="logo"
                <?php
                if($_SESSION['mobile'] == false) {
                    echo ' src = "' . $_SESSION['root'] . 'img/logos/wordsearch-logo.png" ';
                } else {
                    echo ' src = "' . $_SESSION['root'] .'img/logos/c-120.jpg" ';
                }
                echo $header_menu[0] . '" alt="' . $header_logo[0] . '" /></a>';
                if($_SESSION['mobile'] == false) {
                    echo '<span>'. $header_logo[1] .'</span>';
                } else { ?>
                    <div class="header-menu">
                        <a href="#logout-user" class="logout opener" title="<?php echo $header_menu[6]; ?>"><?php echo $form_header[0]; ?></a>
                        <a href="../index.php" title="<?php echo $menu_left[5]; ?>"><?php echo $menu_left[7]; ?></a>
                    </div>
                <?php }
                if($_SESSION['mobile'] == false) { ?>
                    <img id="menu-right-button" src="<?php echo $_SESSION['root']; ?>img/icons/menu-button.png" title="<?php echo $menu_right[0]; ?>" alt="Menu" />
                <?php } ?>
        </div>
    </div>
    <div id="main-content">
        <?php if($_SESSION['mobile'] == false) { ?>
            <div id="menu-left">
                <ul>
                    <li><a href="../index.php" title="<?php echo $faq[14]; ?>"><?php echo $menu_left[1]; ?></a></li>
                </ul>
                <hr />
                <ul>
                    <li><p class="fb-like" data-href="https://www.facebook.com/pages/wordsearch-Online/272183802972264&#63;ref=hl" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></p></li>
                    <li><p class="fb-share-button" data-href="http://www.wordsearch-game.com" data-layout="button_count"></p></li>
                    <li class="g-plus-padder"><p class="g-plusone" data-size="standard" data-count="true"></p></li>
                    <li><a class="twitter-share-button" title ="<?php echo $menu_left[2]; ?>" href="https://twitter.com/share"><?php echo $menu_left[3]; ?></a></li>
                </ul>
            </div>
            <div id="menu-right">
                <hr />
                <ul>
                    <li class="green-color"><?php echo $user_img[2]; ?>
                        <ul>
                            <li><a href="index.php" title="Go back to Members lounge main page!"><?php echo $menu_right[2]; ?></a></li>
                            <li class="green-color"><?php echo $menu_right[1]; ?></li>
                        </ul>
                    </li>
                </ul><hr /><ul>
                    <li><a href="faqs-about-wordsearch" title="<?php echo $menu_bottom[0]; ?>"><?php echo $menu_bottom[1]; ?></a></li>
                    <li><a href="#feedback-user" class="feedback opener" title="<?php echo $menu_bottom[2]; ?>"><?php echo $menu_bottom[3]; ?></a></li>
                    <li><a href="donate-for-wordsearch" title="<?php echo $menu_bottom[4]; ?>"><?php echo $menu_bottom[5]; ?></a></li>
                    <li><a href="wordsearch-puzzle-disclaimer" title="<?php echo $donate[1]; ?>"><?php echo $menu_bottom[6]; ?></a></li>
                </ul>
                <hr />
                <ul><li><a href="#logout-user" class="logout opener" title="<?php echo $header_menu[6]; ?>"><?php echo $form_header[0]; ?></a></li></ul>
            </div>
        <?php } ?>
        <div id="content-wrapper">
            <div id="content-header"></div>
            <div id="content-image">
            <?php if($_SESSION['mobile'] == true) { ?>
                <div class="last-menu">
                    <p class="content-menu2"><a href="index.php" title="See your settings!"><?php echo $menu_right[2]; ?></a></p>
                    <p class="content-menu2"><a href="personal-wordsearch-highscore.php" title="<?php echo $memberarea[10]; ?>"><?php echo $menu_right[1]; ?></a></p>
                    <p class="content-menu2"><a href="../index.php" title="<?php echo $menu_left[7]; ?>"><?php echo $menu_left[5]; ?></a></p>
                </div>
            <?php } ?>
            <div class="content-box">
                <h1><?php echo $user_img[2]; ?></h1><hr />
                <div class="content-holder view">
                    <?php
                    $level = [
                        0 => "beginner",
                        1 => "easy",
                        2 => "middle",
                        3 => "hard",
                        4 => "expert",
                        5 => "master",
                        6 => "godlike",
                    ];
                    $levelMobile = [
                        0 => "easy",
                        1 => "middle",
                        2 => "hard",
                    ];
                    ?>
                    <h2><?php echo $pershigh[0] . $_SESSION["user_name"]; ?></h2>
                    <p class='game-details'><strong><?php echo $pershigh[1]; ?></strong></p>
                    <hr />
                    <h3><?php echo $pershigh[2]; ?></h3>
                    <?php
                    echo "<p class='game-details'>". $pershigh[3] ."<span>" . $userMainData["userGamesComplete"]."</span></p>";
                    echo "<p class='game-details'>". $pershigh[4] ."<span>" . $userMainData["userAllGamesStarted"]."</span></p>";
                    echo "<p class='game-details'>". $pershigh[5] ."<span>" . $userMainData["userLastGame"]."</span></p>";
                    echo "<h3>". $pershigh[6] ."</h3>";
                    echo "<p class='game-details'>". $pershigh[3] ."<span>" . $userGameData[0]["user_completed_games"]."</span></p>";
                    echo "<p class='game-details'>". $pershigh[4] ."<span>" . $userGameData[0]["user_started_games"]."</span></p>";
                    echo "<p class='game-details'>". $pershigh[5] ."<span>" . $userGameData[0]["last_game"]."</span></p>";
                    echo "<h3>". $pershigh[7] ."</h3>";
                    echo "<p class='game-details'>". $pershigh[3] ."<span>" . $userGameDataMobile[0]["user_completed_games"]."</span></p>";
                    echo "<p class='game-details'>". $pershigh[4] ."<span>" . $userGameDataMobile[0]["user_started_games"]."</span></p>";
                    echo "<p class='game-details'>". $pershigh[5] ."<span>" . $userGameDataMobile[0]["last_game"]."</span></p>";
                    echo "<p class='game-details'><span>&nbsp;</span></p>";
                    ?>
                    <div class="clearer"></div>
                    <hr />
                    <h3><?php echo $pershigh[8]; ?></h3>
                    <?php
                    foreach($level as $key => $levVal) {
                        echo "<h4>". $tbl_fields[3] . ucfirst($levVal) . "</h4>";
                        echo "<p class='game-details'>". $pershigh[3] ."<span>" . $userGameData[0][$levVal . "_complete"]."</span></p>";
                        echo "<p class='game-details'>".$pershigh[4]. "<span>" . $userGameData[0][$levVal . "_started"]."</span></p>";
                        echo "<p class='game-details'>". $pershigh[5] ."<span>" . $userGameData[0][$levVal . "_last_game"]."</span></p>";
                        $index = 1;
                        $in = false;
                        foreach($userTop100 as $key => $value) {
                            if($value['user_level'] == $levVal && $index <= 10) {
                                if($index == 1) {
                                    echo ' <table class="pers-high"><tbody><tr class="tr-under"><td>'. $pershigh[9] .'</td><td>'. $pershigh[10] .'</td><td>'. $pershigh[11] .'</td><td>'. $pershigh[12] .'</td></tr>';
                                }
                                echo "<tr><td>".$index."</td>";
                                foreach($value as $fieldname => $val) {
                                    if($fieldname == "user_time") {
                                        $ms = substr($val, -3);
                                        $sec = substr($val, 0 ,strlen($val)-3);
                                        $time = gmdate("H:i:s", $sec);
                                        echo "<td>".$time.".".$ms."</td>";
                                    }
                                    if($fieldname == "user_error") {
                                        echo "<td>".$val."</td>";
                                    }
                                    if($fieldname == "date_of_game") {
                                        echo "<td>".$val."</td>";
                                    }
                                }
                                echo "</tr>";
                                $index++;
                                $in = true;
                            }
                        }
                        if($in == false) { ?>
                            <hr />
                            <p class="game-details"><?php echo $pershigh[14]; ?></p>
                            <p class="game-details"><?php echo $pershigh[15]; ?></p>
                            <p class="content-menu2"><a href="../index.php" title="Go back and play wordsearch online!"><?php echo $menu_left[1]; ?></a></p>
                        <?php } else {
                            echo "</tbody></table>";
                        }
                        echo '<hr />'; }
                    echo '<h3>'. $pershigh[13].'</h3>';
                    foreach($levelMobile as $key => $levVal) {
                        echo "<h4>". $tbl_fields[3] . ucfirst($levVal) . "</h4>";
                        echo "<p class='game-details'>". $pershigh[3] ."<span>" . $userGameDataMobile[0][$levVal . "_complete"]."</span></p>";
                        echo "<p class='game-details'>". $pershigh[4] ."<span>" . $userGameDataMobile[0][$levVal . "_started"]."</span></p>";
                        echo "<p class='game-details'>". $pershigh[5] ."<span>" . $userGameDataMobile[0][$levVal . "_last_game"]."</span></p>";
                        $index = 1;
                        $in = false;
                        foreach($userTop100Mobile as $key => $value) {
                            if($value['user_level'] == $levVal && $index <= 10) {
                                if($index == 1) {
                                    echo ' <table class="pers-high"><tbody><tr class="tr-under"><td>'. $pershigh[9] .'</td><td>'. $pershigh[10] .'</td><td>'. $pershigh[11] .'</td><td>'. $pershigh[12] .'</td></tr>';
                                }
                                echo "<tr><td>".$index."</td>";
                                foreach($value as $fieldname => $val) {
                                    if($fieldname == "user_time") {
                                        $ms = substr($val, -3);
                                        $sec = substr($val, 0 ,strlen($val)-3);
                                        $time = gmdate("H:i:s", $sec);
                                        echo "<td>".$time.".".$ms."</td>";
                                    }
                                    if($fieldname == "user_error") {
                                        echo "<td>".$val."</td>";
                                    }
                                    if($fieldname == "date_of_game") {
                                        echo "<td>".$val."</td>";
                                    }
                                }
                                echo "</tr>";
                                $index++;
                                $in = true;
                            }
                        }
                        if($in == false) { ?>
                            <hr />
                            <p class="game-details"><?php echo $pershigh[14]; ?></p>
                            <p class="game-details"><?php echo $pershigh[15]; ?></p>
                            <p class="content-menu2"><a href="../index.php" title="Go back and play wordsearch online!"><?php echo $menu_left[1]; ?></a></p>
                        <?php } else {
                            echo "</tbody></table>";
                        }
                        echo '<hr />'; } ?>
                </div>
                <div class="clearer"></div>
            </div>
        </div><!--close angle bracket for #content-image div -->
            <div id="footer-content"></div>
        </div><!--close content-wrapper div -->

            </div>


</div>
<?php
    require_once ("../php/forms.php");
    require_once ("../php/footer.php");
?>
