<?php
    require_once("php/header.php");
    require_once("lang/en.php");

    ?>
    <meta charset="utf-8" />
    <!-- some fb stuff -->
    <?php if($_SESSION['mobile'] == false) { ?>
        <meta property="og:type" content="website" />
        <meta property="og:url" content="http://www.wordsearch-game.com" />
        <meta property="og:title" content="Wordsearch Puzzle Online - The Game | Free Play" />
        <meta property="og:description" content="Wordsearch Puzzle - The Online Game. This wordsearch game is free to play around the world! Made with love to enjoy young and old. Like and share with friends!" />
        <meta property="og:image" content="<?php echo $_SESSION['root']; ?>img/others/play-wordsearch-now.png" />
    <?php } ?>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
    <link rel="image_src" href="<?php echo $_SESSION['root']; ?>img/share/c-fb.png" />
    <meta name="description" content="Wordsearch Puzzle - The Online Game. This wordsearch game is free to play around the world! Made with love to enjoy young and old. Like and share with friends!" />
    <meta name="keywords" content="wordsearch, game, Puzzle, free, play, Game, Word, Free, Online, Fun">
    <meta name="author" content="wordsearch-game.com">
    <meta name="robots" content="index,follow">
    <meta name="revisit-after" content="7 days">
    <meta name="geo.placename" content="Pinneberg">
    <meta name="geo.region" content="DE-SH">
    <title>Wordsearch Puzzle Online - The Game | Donation</title>
    <link rel="canonical" href="http://www.wordsearch-game.com" />
    <link rel="stylesheet" href="<?php echo $_SESSION['root']; ?>layout/layout<?php echo $_SESSION['mobPath']; ?>.css" type="text/css" />
    <?php if($_SESSION['mobile'] == true) { ?>
        <link rel="apple-touch-icon-precomposed" href="<?php echo $_SESSION['root']; ?>icons/mobile/apple-touch-icon.png" />
    <?php } ?>
    <link rel="icon" type="image/x-icon" href="<?php echo $_SESSION['root']; ?>icons/favicon.png">
</head>
<body>
<!-- add fb api if not mobile (the buttons in the menu for share -->
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
                if($_SESSION["user_picture"] == false) { ?>
                    <a href="/memberarea/" title="<?php echo $user_img[0]; ?>"><img class="head-avatar" src="<?php echo $_SESSION['root']; ?>img/user/profile/guest.jpg" title="<?php echo $user_img[3]; ?>" alt="<?php echo $user_img[3]; ?>"/></a>
                <?php } else {
                    // else default image - easy ;) ?>
                    <a href="/memberarea/" title="<?php echo $user_img[0]; ?>"><img class="head-avatar" src="<?php echo $_SESSION['root']; ?>img/user/profile/<?php echo $_SESSION['user_name'].$smallPic ?>.jpg" title="<?php echo $user_img[4]; ?>" alt="<?php echo $user_img[5]; ?>"/></a>
                    <?php if($_SESSION['mobile'] == false) { ?>
                        <div class="menu-log"><a href="/memberarea/" title="<?php echo $header[0]; ?>"><?php echo $user_img[2]; ?></a>
                        </div>
                        <div class="menu-log"><a href="/memberarea/personal-wordsearch-highscore" title="<?php echo $header_menu[0]; ?>"><?php echo $header_menu[1]; ?></a></div>
                    <?php } }
            } else { ?>
                <a href="#login-user" class="login opener" title="<?php echo $header_menu[2]; ?>"><img class="head-avatar" src="<?php echo $_SESSION['root']; ?>img/user/profile/guest.jpg" title="<?php echo $user_img[3]; ?>" alt="<?php echo $user_img[3]; ?>"/></a>
                <?php if($_SESSION['mobile'] == false) { ?>
                    <div class="menu-log"><a href="#login-user" class="login opener" title="<?php echo $header_menu[3]; ?>"><?php echo $form_header[1]; ?></a></div>
                    <div class="menu-log"><a href="#login-user" class="register opener" title="<?php echo $header_menu[4]; ?>"><?php echo $header_menu[5]; ?></a></div>
                <?php }
            } ?>
            <a href="http://www.wordsearch-game.com" title="Wordsearch main page!"><img class="logo"
                <?php
                if($_SESSION['mobile'] == false) {
                    // here again - if mobile show the white logo else the normal ;)
                    echo ' src = "' . $_SESSION['root'] . 'img/logos/wordsearch-logo.png" ';
                } else {
                    echo ' src = "' . $_SESSION['root'] .'img/logos/c-120.jpg" ';
                }
                echo 'title="'.$header_logo[0].'" alt="'.$header_logo[0].'" /></a>';
                if($_SESSION['mobile'] == false) {
                    echo '<span>'.$header_logo[1].'</span>';
                } else { ?>
                <div class="header-menu">
                    <?php if($_SESSION['logged_in'] == true) {
                        // here again logged in check to show correct menu
                        echo '<a href="#logout-user" class="logout" title="'.$header_menu[6].'">'.$form_header[0].'</a>';
                        echo '<a href="memberarea/" title="'.$header_menu[7].'">'.$user_img[2].'</a>';
                    } else {
                        // or
                        echo '<a href="#register-user" class="register opener" title="'.$header_menu[8].'">'.$header_menu[5].'</a>';
                        echo '<a href="#login-user" class="login opener" title="'.$header_menu[9].'">'.$form_header[1].'</a>';
                    }
                    echo '</div>';
                    }
                if($_SESSION['mobile'] == false) { ?>
                    <img id="menu-right-button" src="<?php echo $_SESSION['root']; ?>img/icons/menu-button.png" title="<?php echo $menu_right[0]; ?>" alt="<?php echo $menu_right[3]; ?>" />
                <?php } ?>
        </div>
    </div>
    <div id="main-content">
        <?php if($_SESSION['mobile'] == false) { ?>
        <div id="menu-left">
            <ul>
                <li><a href="http://www.wordsearch-game.com" title="<?php echo $menu_left[0]; ?>"><?php echo $menu_left[1]; ?></a></li>
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
            <ul>
                <?php if($_SESSION['logged_in'] === false) { ?>
                    <li><a href="#login-user" title="<?php echo $header_menu[9]; ?>" class="login opener"><?php echo $form_header[1]; ?></a></li>
                    <li><a href="#register-user" title="<?php echo $header_menu[8]; ?>" class="register opener"><?php echo $header_menu[5]; ?></a></li>
                <?php } else { ?>
                    <li><a href="/memberarea/index.php"><?php echo $user_img[2]; ?></a>
                        <ul>
                            <li><a href="/memberarea/personal-wordsearch-highscore"><?php echo $menu_right[1]; ?></a></li>
                            <li><a href="/memberarea/"><?php echo $menu_right[2]; ?></a></li>
                        </ul>
                    </li>
                <?php } ?>
            </ul><hr /><ul>
                <li><a href="faqs-about-wordsearch" title="<?php echo $menu_bottom[0]; ?>"><?php echo $menu_bottom[1]; ?></a></li>
                <li><a href="#feedback-user" class="feedback opener" title="<?php echo $menu_bottom[2]; ?>"><?php echo $menu_bottom[3]; ?></a></li>
                <li><span class="green-color indent"><?php echo $menu_bottom[5]; ?></span></li>
                <li><a href="wordsearch-puzzle-disclaimer" title="<?php echo $donate[1]; ?>"><?php echo $menu_bottom[6]; ?></a></li>
                <?php if($_SESSION['logged_in'] === true) { ?>
                    <hr /><ul><li><a href="#logout-user" class="logout opener" title="<?php echo $header_menu[6]; ?>"><?php echo $form_header[0]; ?></a></li></ul>
                <?php } ?>
            </ul>
        </div>
        <?php } ?>
        <div id="content-wrapper">
         <div id="content-header"></div>
            <div id="content-image">
            <div class="content-box">
            <h1><?php echo $donate[2]; ?></h1><hr />
                <div class="content-holder view ">
            <h2 class="content-header"><?php echo $donate[3]; ?></h2>
            <p><?php echo $donate[4]; ?></p>
            <hr />
                <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=XD6U5N3Z3WYWY" title="<?php echo $donate[5]; ?>" target="_blank"><input type="image" src="<?php echo $_SESSION['root']; ?>img/icons/donate-with-paypal.jpg" alt="<?php echo $donate[6]; ?>"></a>
                <img alt="<?php echo $donate[7]; ?>" src="https://www.paypalobjects.com/de_DE/i/scr/pixel.gif" width="1" height="1">
            </form>
            <hr />
            <h3 class="content-content-inner-header"><?php echo $donate[8]; ?></h3>
            <ul class="future-list">
                <li><?php echo $donate[9]; ?>
                <ul class="future-list-inner">
                    <li><?php echo $donate[10]; ?></li>
                    <li><?php echo $donate[11]; ?></li>
                    <li><?php echo $donate[12]; ?></li>
                    <li><?php echo $donate[13]; ?></li>
                </ul>
                </li>
                <li><?php echo $donate[14]; ?></li>
                <li><?php echo $donate[15]; ?></li>
                <li><?php echo $donate[16]; ?></li>
                <li><?php echo $donate[17]; ?></li>
            </ul>
            <h3 class="content-inner-header"><?php echo $donate[18]; ?></h3>
            <ul class="future-list">
                <li><?php echo $donate[19]; ?></li>
                <li><?php echo $donate[20]; ?></li>
                <li><?php echo $donate[21]; ?></li>
                <li><?php echo $donate[22]; ?></li>
            </ul>
            <hr />
            <h3 class="content-inner-header"><?php echo $donate[23]; ?></h3>
            <p><?php echo $donate[24]; ?></p>
            <p><strong><?php echo $donate[25]; ?></strong></p>
            <?php
            if($_SESSION['mobile'] == true) { ?>
            <div class="share-box">
                <a href="https://www.facebook.com/pages/wordsearch-Online/272183802972264&#63;ref=hl" title="<?php echo $donate[26]; ?>" target="_blank">
                    <img src="<?php echo $_SESSION['root']; ?>img/icons/flat-button-fb.jpg" title="<?php echo $donate[26]; ?>" class="sharing-button" /></a>
                <a href="https://twitter.com/wordsearchEU" title="<?php echo $donate[27]; ?>" target="_blank">
                    <img src="<?php echo $_SESSION['root']; ?>img/icons/flat-button-twitter.jpg" title="<?php echo $donate[27]; ?>" class="sharing-button" /></a>
                <a href="https://plus.google.com/u/0/b/112606969232275133705/112606969232275133705/posts" title="<?php echo $donate[28]; ?>" target="_blank">
                    <img src="<?php echo $_SESSION['root']; ?>img/icons/flat-button-google.jpg" title="<?php echo $donate[28]; ?>" class="sharing-button" /></a>
            </div>
            <?php
            } else { ?>
            <p class="fb-like" data-href="https://www.facebook.com/pages/wordsearch-Online/272183802972264&#63;ref=hl" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></p><br />
            <p class="fb-share-button" data-href="http://www.wordsearch-game.com" data-layout="button_count"></p>
            <p><span class="g-plusone" data-size="standard" data-count="true"></span></p>
            <?php } ?>
            <hr />
            <h4 class="content-header-ultra-one"><?php echo $donate[29]; ?></h4>
            <?php if($_SESSION['mobile'] == false) { ?>
            <?php } ?>
            <hr />
            <p>&nbsp;</p>
            <p><?php echo $donate[30]; ?><a href="https://www.facebook.com/Wildgans.Im.Schlachthof" target="_blank" class="inner-link" title="<?php echo $donate[31]; ?>"><?php echo $donate[32]; ?></a></p>
            <?php if ($_SESSION['mobile'] == true) { ?>
                <hr />
                <div class="last-menu">
					<p class="content-menu2"><a href="http://www.wordsearch-game.com" title="<?php echo $menu_bottom[7]; ?>"><?php echo $menu_bottom[8]; ?></a></p>
				</div>
                <div class="last-menu">
                    <p class="content-menu2"><a href="wordsearch-puzzle-disclaimer" title="<?php echo $donate[1]; ?>"><?php echo $menu_bottom[6]; ?></a></p>
                    <p class="content-menu2"><a href="faqs-about-wordsearch" title="<?php echo $menu_bottom[0]; ?>"><?php echo $menu_bottom[1]; ?></a></p>
                    <p class="content-menu2"><a href="#feedback-user" class="feedback opener" title="<?php echo $menu_bottom[2]; ?>"><?php echo $menu_bottom[3]; ?></a></p>
                </div>
            <?php } else { ?>
                <div class="clearer-doubled"></div>
            <?php } ?>
        </div>
    </div>
    </div>
     <div id="footer-content"></div>
</div></div></div>
<?php
// thi hidden modals ;)
require_once ('php/forms.php');
require_once ("php/footer.php");

?>