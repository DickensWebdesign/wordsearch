<?php
    require_once("php/header.php");
	require_once("lang/en.php");
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
    <meta name="description" content="Wordsearch Puzzle - The Online Game. This wordsearch game is free to play around the world! Made with love to enjoy young and old. Like and share with friends!" />
    <meta name="keywords" content="wordsearch, game, Puzzle, free, play, Game, Word, Free, Online, Fun">
    <meta name="author" content="wordsearch-game.com">
    <meta name="robots" content="index,follow">
    <meta name="revisit-after" content="7 days">
    <meta name="geo.placename" content="Pinneberg">
    <meta name="geo.region" content="DE-SH">
    <title>Wordsearch Puzzle Online - The Game | FAQs</title>
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
                    <a href="/memberarea/" title="<?php echo $user_img[0];?>"><img class="head-avatar" src="<?php echo $_SESSION['root']; ?>img/user/profile/guest.jpg" title="<?php echo $user_img[3];?>" alt="<?php echo $user_img[3];?>"/></a>
                <?php } else { ?>
                    <a href="/memberarea/" title="<?php echo $user_img[0];?>"><img class="head-avatar" src="<?php echo $_SESSION['root']; ?>img/user/profile/<?php echo $_SESSION['user_name'].$smallPic ?>.jpg" title="<?php echo $user_img[4];?>" alt="<?php echo $user_img[5];?>"/></a>
                    <?php if($_SESSION['mobile'] == false) { ?>
                        <div class="menu-log"><a href="/memberarea/" title="<?php echo $header[0];?>"><?php echo $user_img[2];?></a></div>
                        <div class="menu-log"><a href="/memberarea/personal-wordsearch-highscore" title="<?php echo $header_menu[0];?>"><?php echo $header_menu[1];?></a></div>
                    <?php } }
            } else { ?>
                <a href="#login-user" class="login opener" title="<?php echo $header_menu[2];?>"><img class="head-avatar" src="<?php echo $_SESSION['root']; ?>img/user/profile/guest.jpg" title="<?php echo $user_img[3];?>" alt="<?php echo $user_img[3];?>"/></a>
                <?php if($_SESSION['mobile'] == false) { ?>
                    <div class="menu-log"><a href="#login-user" class="login opener" title="<?php echo $header_menu[3];?>"><?php echo $form_header[1];?></a></div>
                    <div class="menu-log"><a href="#login-user" class="register opener" title="<?php echo $header_menu[4];?>"><?php echo $header_menu[5];?></a></div>
                <?php }
            } ?>
            <a href="http://www.wordsearch-game.com" title="Wordsearch main page!">
                <?php
				echo '<img class="logo"';
                if($_SESSION['mobile'] == false) {
                    echo ' src = "'.$_SESSION['root'].'/img/logos/wordsearch-logo.png" ';
                } else {
                    echo ' src = "'.$_SESSION['root'].'/img/logos/c-120.jpg" ';
                }
                echo 'title="' . $header_logo[0] . '" alt="' . $header_logo[0] . '"/></a>';?>
              <?php  
				if($_SESSION['mobile'] == false) {
                    echo '<span>' . $header_logo[1] . '</span>';
                } else { ?>
                <div class="header-menu"> 
                    <?php if($_SESSION['logged_in'] == true) {
                        echo '<a href="#logout-user" class="Logout opener" title="' . $header_menu[6] . '">'.$form_header[0].'</a>';
                        echo '<a href="/memberarea/" title="'.$header_menu[7].'">'.$user_img[2].'</a>';
                    } else {
                        echo '<a href="#register-opener" class="register opener" title="'.$header_menu[4].'">'.$header_menu[5].'</a>';
                        echo '<a href="#login-user" class="login opener" title="'.$header_menu[3].'">'.$form_header[1].'</a>';
                    }
					} ?>
				</div>
                   <?php 
                if($_SESSION['mobile'] == false) { ?>
                    <img id="menu-right-button" src="<?php echo $_SESSION['root']; ?>img/icons/menu-button.png" title="<?php echo $menu_right[0];?>" alt="<?php echo $menu_right[3];?>" />
                <?php } ?>
            </div>
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
                <li><a class="twitter-share-button" title="<?php echo $menu_left[2]; ?>" href="https://twitter.com/share"><?php echo $menu_left[3]; ?></a></li>
            </ul>
        </div>
        <div id="menu-right">
            <ul>
                <?php if($_SESSION['logged_in'] === false) { ?>
                    <li><a href="#login-user" class="login opener" title="<?php echo $header_menu[3]; ?>"><?php echo$form_header[1]; ?></a></li>
                    <li><a href="#register-user" class="register opener" title="<?php echo $header_menu[4]; ?>"><?php echo $header_menu[5]; ?></a></li>
                <?php } else { ?>
                    <li><a href="/memberarea/"><?php echo $user_img[2]; ?></a>
                        <ul>
                            <li><a href="/memberarea/personal-wordsearch-highscore"><?php echo $menu_right[1]; ?></a></li>
                            <li><a href="/memberarea/"><?php echo $menu_right[2]; ?></a></li>
                        </ul>
                    </li>
                <?php } ?>
            </ul>
			<hr />
			<ul>
                <li><span class="green-color indent"><?php echo $menu_bottom[1]; ?></span></li>
                <li><a class="feedback opener" href="#feedback-user" title="<?php echo $menu_bottom[2]; ?>"><?php echo $menu_bottom[3]; ?></a></li>
                <li><a href="donate-for-wordsearch" title="<?php echo $menu_bottom[4]; ?>"><?php echo $menu_bottom[5]; ?></a></li>
                <li><a href="wordsearch-puzzle-disclaimer" title="<?php echo $donate[1]; ?>"><?php echo $menu_bottom[6]; ?></a></li>
                <?php if($_SESSION['logged_in'] === true) { ?>

					<ul>
						<li><a href="#logout-user" class="logout opener" title="<?php echo $form_header[0]; ?>"><?php echo $form_header[0]; ?></a></li>
					</ul>
                <?php } ?>
            </ul>
        </div>
        <?php } ?>
        <div id="content-wrapper">
         <div id="content-header"></div>
            <div id="content-image">
			<div class="content-box">
					<h1><?php echo $faq[0]; ?></h1>
				<div class="content-holder view">
					<a id="why-should-I-solve-wordsearch"></a>
					<h2 class="content-header"><?php echo $faq[1]; ?></h2>
					<hr />
					<p><?php echo $faq[2]; ?></p>
					<ul>
						<li><?php echo $faq[3]; ?></li>
						<li><?php echo $faq[4]; ?></li>
						<li><?php echo $faq[5]; ?></li>
						<li><?php echo $faq[6]; ?></li>
					</ul>
					<p><?php echo $faq[7]; ?></p>
					<p><?php echo $faq[8]; ?></p>
					<p><?php echo $faq[9]; ?></p>
                    <hr />
					<div class="content-menu-wrapper">
						<?php if ($_SESSION['mobile'] == true) {
							echo '<p class="content-menu"><a class="play-link" href="'. $_SESSION['root'].'">'. $faq[10] .'</a></p>';
						} ?>
						<p class="content-menu"><a class="content-link" title="<?php echo $faq[11]; ?>" href="#why-should-I-play-this-game"><?php echo $faq[11]; ?></a></p>
						<p class="content-menu"><a href="http://www.wordsearch-game.com" title="<?php echo $faq[13]; ?>"><?php echo $faq[14]; ?></a></p>
					</div>
				</div>
				<div class="hidden content-holder">
					<a id="why-should-I-play-this-game"></a>
					<h2 class="content-header"><?php echo $faq[12]; ?></h2>
					<h3 class="content-inner-header"><?php echo $faq[15]; ?></h3>
					<ul>
						<li><?php echo $faq[16]; ?></li>
						<li><?php echo $faq[17]; ?></li>
						<li><?php echo $faq[18]; ?></li>
						<li><?php echo $faq[19]; ?></li>
						<li><?php echo $faq[20]; ?></li>
						<li><?php echo $faq[21]; ?></li>
					</ul>
					<h3 class="content-inner-header"><?php echo $faq[22]; ?></h3>
					<ul>
						<li><?php echo $faq[23]; ?></li>
						<li><?php echo $faq[24]; ?></li>
						<li><?php echo $faq[25]; ?></li>
					</ul>
					<p><?php echo $faq[26]; ?><strong><a href="/donate-for-wordsearch" class="inner-link" title="<?php echo $faq[27]; ?>"><?php echo $faq[28]; ?></a></strong></p>
					<h3 class="content-inner-header"><?php echo $faq[29]; ?></h3>
					<hr />
					<div class="content-menu-wrapper">
						<?php if ($_SESSION['mobile'] == true) {
							echo '<p class="content-menu"><a title="'.$faq[30].'" href="http://www.wordsearch-game.com">Play</a></p>';
						} ?>
						<p class="content-menu"><a class="content-link sec-content-whysolve" title="<?php echo $faq[31]; ?>" href="#why-should-I-solve-wordsearch"><?php echo $faq[1]; ?></a></p>
						<p class="content-menu"><a href="http://www.wordsearch-game.com" title="Go back to the main page to play Wordsearch Puzzle!"><?php echo $faq[14]; ?></a></p>
					</div>
				<?php if ($_SESSION['mobile'] == true) { ?>
					<div class="last-menu">
						<p class="content-menu2"><a href="donate-for-wordsearch" title="<?php echo $faq[32]; ?>"><?php echo $menu_bottom[9]; ?></a></p>
						<p class="content-menu2"><a href="wordsearch-puzzle-disclaimer" title="<?php echo $donate[1]; ?>"><?php echo $menu_bottom[6]; ?></a></p>
						<p class="content-menu2"><a class="feedback opener" href="#feedback-user" title="<?php echo $menu_bottom[2]; ?>"><?php echo $menu_bottom[3]; ?></a></p>
					</div>
				<?php } ?>
				</div>
			</div>
			</div>
<div id="footer-content"></div>
		</div>
</div>
<?php
require_once ('php/forms.php');
require_once ("php/footer.php");
?>