<?php
    require_once("../php/header.php");
    require_once("../lang/en.php");
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
<link rel="image_src" href="<?php echo $_SESSION['root']; ?>img/share/c-fb.png" />
<meta name="description" content="wordsearch - Memberlounge! See your personal statistics of made games at wordsearch-Online.eu!">
<meta name="keywords" content="wordsearch, game, Memberarea ">
<meta name="author" content="wordsearch-game.com">
<meta name="robots" content="index,follow">
<meta name="revisit-after" content="7 days">
<meta name="geo.placename" content="Pinneberg">
<meta name="geo.region" content="DE-SH">
<title>Wordsearch Puzzle Online - Memberlounge</title>
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
                if($_SESSION['user_picture'] == false) { ?>
                    <a href="/memberarea" title="<?php echo $user_img[0]; ?>"><img class="head-avatar" src="<?php echo $_SESSION['root']; ?>img/user/profile/guest.jpg" title="<?php echo $user_img[3]; ?>" alt="<?php echo $user_img[3]; ?>"/></a>
                <?php } else { ?>
                    <a href="/memberarea" title="<?php echo $user_img[0]; ?>"><img class="head-avatar" src="<?php echo $_SESSION['root']; ?>img/user/profile/<?php echo $_SESSION['user_name'].$smallPic ?>.jpg" title="your current avatar image" alt="your avatar image"/></a>
                <?php }
                if($_SESSION['mobile'] == false) { ?>
                    <div class="menu-log green-color" ><span></span><?php echo $user_img[2]; ?></span></div>
                    <div class ="menu-log"><a href="<?php echo $_SESSION['root']; ?>memberarea/personal-wordsearch-highscore" title="<?php echo $header_menu[0]; ?>"><?php echo $header_menu[1];?></a></div>
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
                        <img id="menu-right-button" src="../img/icons/menu-button.png" title="<?php echo $menu_right[0]; ?>" alt="Menu" />
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
                        <li class="color-green"><?php echo $menu_right[2]; ?></li>
                        <li><a title="Personal overview of made games!" href="personal-wordsearch-highscore"><?php echo $menu_right[1]; ?></a></li>
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
        <p class="content-menu2 green-color"><?php echo $menu_right[2]; ?></p>
        <p class="content-menu2"><a href="personal-wordsearch-highscore.php" title="<?php echo $memberarea[10]; ?>"><?php echo $menu_right[1]; ?></a></p>
        <p class="content-menu2"><a href="../index.php" title="<?php echo $menu_left[5]; ?>"><?php echo $menu_left[7]; ?></a></p>
    </div>
        <?php } ?>
            <div class="content-box">
            <h1><?php echo $user_img[2]; ?></h1><hr />
                <div class="content-holder view">
                    <h2><?php echo $memberarea[0]; ?></h2>
                    <hr />
                    <div class="settings">
                        <p><span class="settings-left"><?php echo $tbl_fields[1]; ?></span>
                        <span class="settings-center" id="user-name"><?php echo $_SESSION['user_name']; ?></span>
                        <span class="settings-right"><?php echo $memberarea[1]; ?></span>
                        <span class="settings-right">&nbsp;</span>
                        </p>
                        <p><span class="settings-left"><?php echo $memberarea[2]; ?></span>
                            <span class="settings-center">
                            <?php if($_SESSION['user_picture'] == false) { ?>
                                <img class="settings-profile-pic" src="<?php echo $_SESSION['root']; ?>img/user/profile/guest.jpg" title="Your profile picture!"/>
                            <?php  } else { ?>
                                <img class="settings-profile-pic" src="<?php echo $_SESSION['root']; ?>img/user/profile/<?php echo $_SESSION['user_name']; ?>.jpg" title="Your profile picture!" />
                            <?php } ?>
                            </span>
                            <span id="settings-avatar-statusbox" class="settings-right">&nbsp;</span>
                            <span class="settings-menu">
                                    <span><a href="#settings-avatar-user" title="<?php echo $memberarea[3]; ?>" class="settings-avatar opener content-menu2" ><?php echo $form_button_value[15]; ?></a></span>
                                    <?php if($_SESSION['mobile'] === true) {
                                        echo ' <span class="settings-right">&nbsp;</span>';
                                    } ?>
                                    <span id="menu-change" class="content-menu2
                                    <?php if($_SESSION['user_picture'] == false) {
                                    echo ' hidden '; } ?>
                                    "><a href="#" title="<?php echo $memberarea[5]; ?>" class="settings-avatar-delete ajax-single"><?php echo $memberarea[4]; ?></a></span>
                            </span>
                        </p>
                    </div>
                    <hr />
                    <div class="settings">
                        <p>
                            <span class="settings-left"><?php echo $form_inputs[0]; ?></span>
                            <span class="settings-center" id="settings-mail-value"><span><?php echo $userSettings[0]['user_email']; ?></span></span>
                            <span id="settings-mail-statusbox" class="settings-statusbox settings-right">&nbsp;</span>
                            <span class="content-menu2"><a href="#settings-mail-user" class="settings-mail opener"><?php echo $form_button_value[15]; ?></a></span>
                        </p>
                        <p>
                            <span class="settings-left"><?php echo $form_inputs[15]; ?></span>
                            <span class="settings-center"><?php echo $memberarea[8][0]; ?></span>
                            <span class="settings-right" id="settings-password-statusbox">&nbsp;</span>
                            <span class="content-menu2"><a href="#password-user" class="settings-password opener"><?php echo $form_button_value[15]; ?></a></span>
                        </p>
                    </div>
                    <hr />
                    <div class="settings">
                        <p>
                            <span class="settings-left"><?php echo $memberarea[8][1]; ?></span>
                            <span class="settings-center">
                            <?php
                            echo '<span id="settings-permanent-login-value"><span class="';
                            if (isset($_COOKIE['user_id'])) {
                                echo ' green-color">' . $memberarea[6]  . '</span>';
                            } else {
                                echo ' red-color">' . $memberarea[7]  . '</span>';
                            }
                             ?>
                            </span></span>
                            <span id="settings-permanent-login-statusbox" class="settings-right">&nbsp;</span>
                            <span><a href="#" title="<?php if (isset($_COOKIE['user_id'])) { echo $memberarea[9][1]; } else { echo $memberarea[9][0]; } echo $memberarea[12]; ?>" class="settings-permanent-login ajax-single value content-menu2"><?php echo $form_button_value[15]; ?></a></span>
                        </p>
                        <p>
                            <span class="settings-left"><?php echo $memberarea[11]; ?></span>
                            <span class="settings-center">
                            <?php
                            echo '<span id="settings-newsletter-value"><span class="';
                            if ($userSettings[0]['wordsearch_newsletter']) {
                                echo 'green-color">' . $memberarea[6]  . '</span>';
                            } else {
                                echo 'red-color">' . $memberarea[7]  . '</span>';
                            }
                            ?>
                           </span></span>
                            <span id="settings-newsletter-statusbox" class="settings-right">&nbsp;</span>
                            <span><a href="#" title="<?php if (isset($userSettings['0']['wordsearch_newsletter'])) { echo $memberarea[9][0]; } else { echo $memberarea[9][1]; } echo $memberarea[9][2] ?>" class="settings-newsletter ajax-single value content-menu2"><?php echo $form_button_value[15]; ?></a></span>
                        </p>
                    </div>
                    <hr />
                    <div class="settings">
                        <p>
                            <span class="settings-left"><?php echo $form_inputs[6]; ?></span>
                            <span class="settings-center">&nbsp;</span>
                            <span id="settings-delete-statusbox" class="settings-right">&nbsp;</span>
                            <span><a href="#delete-user" class="settings-delete opener content-menu2"><?php echo $memberarea[4]; ?></a></span>
                        </p>
                    </div>
                <?php if ($_SESSION['mobile'] == true) { ?>
                    <hr />
                    <div class="last-menu">
                        <p class="content-menu2"><a href="#feedback-user" class="feedback opener" title="<?php echo $menu_bottom[2]; ?>"><?php echo $menu_bottom[3]; ?></a></p>
                        <p class="content-menu2"><a href="personal-wordsearch-highscore.php" title="<?php echo $memberarea[10]; ?>"><?php echo $menu_right[1]; ?></a></p>
                        <p class="content-menu2"><a href="../index.php" title="<?php echo $menu_left[5]; ?>"><?php echo $menu_left[7]; ?></a></p>
                    </div>
                <?php } ?>
                <div class="clearer-doubled"></div>
                </div>
            </div>
            </div><!--close angle bracket for #content-image div -->
             <div id="footer-content"></div>
        </div>
    </div>
</div>
<?php
require_once '../php/forms.php';
require_once "../php/footer.php";
?>