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
    <title>Wordsearch Puzzle Online - The Game | Free Play</title>
    <link rel="stylesheet" href="<?php echo $_SESSION['root']; ?>layout/layout<?php echo $_SESSION['mobPath']; ?>.css" type="text/css" />
    <?php if($_SESSION['mobile'] == true) { ?>
        <link rel="apple-touch-icon" href="<?php echo $_SESSION['root']; ?>icons/mobile/apple-touch-icon.png" />
    <?php } ?>
    <link rel="icon" type="image/x-icon" href="<?php echo $_SESSION['root']; ?>icons/favicon.png">
</head>
<body>
<?php if($_SESSION['mobile'] == false) { ?>
<div id="fb_root"></div>
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
					<a href="/memberarea/" title="<?php echo $user_img[0];?>"><img class="head-avatar" src="img/user/profile/guest.jpg" title="<?php echo $user_img[3];?>!" alt="<?php echo $user_img[3];?>"/></a>
				<?php } else { ?>
					<a href="/memberarea/" title="<?php echo $user_img[0];?>"><img class="head-avatar" src="img/user/profile/<?php echo $_SESSION['user_name'].$smallPic ?>.jpg" title="<?php echo $user_img[4];?>" alt="<?php echo $user_img[5];?>"/></a>
					<?php if($_SESSION['mobile'] == false) { ?>
						<div class="menu-log"><a href="/memberarea/" title="<?php echo $user_img[0];?>"><?php echo $user_img[2];?></a>
						</div>
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
					echo ' src="'.$_SESSION['root'].'/img/logos/wordsearch-logo.png" ';
				} else {
					echo ' src="'.$_SESSION['root'].'/img/logos/c-120.jpg" ';
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
			   <?php if($_SESSION['mobile'] == false) { ?>
				 <img id="menu-right-button" src="<?php echo $_SESSION['root']; ?>img/icons/menu-button.png" title="<?php echo $menu_right[0];?>" alt="<?php echo $menu_right[3];?>" />
				<?php } ?>
		</div>
	</div>
    <div id="main-content">
        <div id="menu-left">
            <?php if($_SESSION['mobile'] == false) { ?>
                <img class="play-now" src="<?php echo $_SESSION['root']; ?>img/others/play-wordsearch-now.png" alt="<?php echo $menu_left[4];?>" title="<?php echo $menu_left[5];?>" />
            <?php
            } else { ?>
                <h2><?php echo $menu_left[6];?></h2>
                <hr />
            <?php } ?>
            <ul>
                <?php if($_SESSION['mobile'] == true) { ?>
                <li><a href="#level-easy-mobile" class="Beginner level" title="<?php echo $mobile[0];?>"><?php echo $mobile[1];?></a></li>
                <li><a href="#level-middle-mobile" class="Easy level" title="<?php echo $mobile[2];?>"><?php echo $mobile[3];?></a></li>
                <li><a href="#level-hard-mobile" class="Middle level" title="<?php echo $mobile[4];?>"><?php echo $mobile[5];?></a></li>
            </ul>
            <hr />
            <ul>
                <li><a href="#show-highscore" class="highscore"><?php echo $highscore[0];?></a></li>
                <?php } else { ?>
                    <li><a href="#level-beginner-browser" class="Beginner level" title="<?php echo $level_title[0];?>">10 x 10</a></li>
                    <li><a href="#level-easy-browser" class="Easy level" title="<?php echo $level_title[1];?>"><?php echo $level[1];?></a></li>
                    <li><a href="#level-middle-browser" class="Middle level"  title="<?php echo $level_title[2];?>"><?php echo $level[2];?></a></li>
                    <li><a href="#level-hard-browser" class="Hard level" title="<?php echo $level_title[3];?>"><?php echo $level[3];?></a></li>
                    <li><a href="#level-expert-browser" class="Expert level" title="<?php echo $level_title[4];?>"><?php echo $level[4];?></a></li>
                    <li><a href="#level-master-browser" class="Master level" title="<?php echo $level_title[5];?>"><?php echo $level[5];?></a></li>
                    <li><a href="#level-godlike-browser" class="Godlike level" title="<?php echo $level_title[6];?>"><?php echo $level[6];?></a></li>
                    </ul><hr />
            <ul>
                <li><a href="#show-highscore" class="highscore"  title="<?php echo $highscore_title[0];?>"><?php echo $highscore[0];?></a></li>
                <?php } ?>
            </ul>
        <hr />
                <?php
                if($_SESSION['mobile'] == true) {
                    ?>
                    <div class="share-box">
                        <a href="https://www.facebook.com/pages/wordsearch-Online/272183802972264&#63;ref=hl" title="<?php echo $facebook[0];?>" target="_blank">
                            <img src="<?php echo $_SESSION['root']; ?>img/icons/flat-button-fb.jpg" alt="<?php echo $facebook[1]; ?>" title="<?php echo $facebook[2]; ?>" class="sharing_button" /></a>
                        <a href="https://twitter.com/wordsearchEU" title="<?php echo $twitter[0]; ?>" target="_blank">
                            <img src="<?php echo $_SESSION['root']; ?>img/icons/flat-button-twitter.jpg" alt="<?php echo $twitter[1]; ?>" title="<?php echo $twitter[2]; ?>" class="sharing_button" /></a>
                        <a href="https://plus.google.com/u/0/b/112606969232275133705/112606969232275133705/posts" title="<?php echo $gplus[0]; ?>" target="_blank">
                            <img src="<?php echo $_SESSION['root']; ?>img/icons/flat-button-google.jpg" alt="<?php echo $gplus[1]; ?>" title="<?php echo $gplus[2]; ?>" class="sharing_button" /></a>
                    </div>

                <?php
                } else { ?>
                    <ul>
                        <li><p class="fb-like" data-href="https://www.facebook.com/pages/wordsearch-Online/272183802972264&#63;ref=hl" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></p></li>
                        <li><p class="fb-share-button" data-href="http://www.wordsearch-game.com" data-layout="button_count"></p></li>
                        <li class="g-plus-padder"><p class="g-plusone" data-size="standard" data-count="true"></p></li>
                        <li><a class="twitter-share-button" title ="<?php echo $menu_left[2]; ?>" href="https://twitter.com/share"><?php echo $menu_left[3]; ?></a></li>
                    </ul>
                <?php } ?>
        </div>
        <?php
        if($_SESSION['mobile'] == false) { ?>
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
                    <li><a href="donate-for-wordsearch" title="<?php echo $menu_bottom[4]; ?>"><?php echo $menu_bottom[5]; ?></a></li>
                    <li><a href="wordsearch-puzzle-disclaimer" title="<?php echo $donate[1]; ?>"><?php echo $menu_bottom[6]; ?></a></li>
                    <?php if($_SESSION['logged_in'] === true) { ?>
                        <hr /><ul><li><a href="#logout-user" class="logout opener" title="<?php echo $header_menu[6]; ?>"><?php echo $form_header[0]; ?></a></li></ul>
                    <?php } ?>
                </ul>
            </div>
        <?php } ?>
        <div id="second-level">
            <!--- menu to choose AI -->
            <h2>Play against the time<span></span></h2><hr />
            <ul>
                <li><a href="#AI-easy-browser" class="level-sec" title="<?php echo $level_title[0];?>">Beat the high-score</a></li>
                </ul>
            <hr />
            <h2>Play against an AI</h2><hr />
            <ul>
                <li><a href="#AI-easy-browser" class="Easy ai level-sec" title="<?php echo $level_title[0];?>"><?php echo $level[1];?></a></li>
                <li><a href="#AI-middle-browser" class="Middle ai level-sec" title="<?php echo $level_title[0];?>"><?php echo $level[2];?></a></li>
                <li><a href="#AI-hard-browser" class="Hard ai level-sec" title="<?php echo $level_title[0];?>"><?php echo $level[3];?></a></li>
            </ul>
        </div>


        <div id="game-start-wrapper">
                <h2 class="content-header-ultra-one opac"><?php echo $game[0]; ?></h2>


            <hr />
                <p class="game-details"><?php echo $game[1]; ?><span>
                            <?php echo $_SESSION['user_name']; ?>
                    </span></p>
                <p class="game-details"><?php echo $game[2]; ?><span class="choice"></span></p>
                <p class="game-details"><?php echo 'Mode:' ?><span class="mode"></span></p>
                <hr />
                <input type="button" value="start" id="game-start" class="user-button2" name="game-start" />
        </div>
        <div id="content-wrapper">
            <div id="content-header"></div>
            <div id="content-image">
            <div class="content-box">

                <div class="content-holder view">
                    <?php if($_SESSION['mobile'] == false) {
                        if ($_SESSION['logged_in'] === false) { ?>
                            <p class="content-menu"><a href="#login-user" class="login opener" title="<?php echo $header_menu[9]; ?>"><?php echo $form_header[1]; ?></a></p>
                            <p class="content-menu"><a href="#register-user" class="register opener" title="<?php echo $game[6]; ?>"><?php echo $form_header[3]; ?></a></p>
                        <?php } } ?>
                    <a id="wordsearch-game-rules"></a>
                    <div class="rules-box">
                        <h1 class="content-header"><?php echo $game[5] .'<br>'. $game[7]; ?></h1>
                        <ul class="ul-gamerules">
                            <li><?php echo $game[8]; ?></li>
                            <li><?php echo $game[9]; ?></li>
                             <li><?php echo $game[10]; ?></li>
                            <li><?php echo $game[11]; ?></li>
                            <li><?php echo $game[12]; ?></li>
                            <li><?php echo $game[13]; ?></li>
                        </ul>
                        <h3 class="content-header-ultra-one" id="animate-text"><?php echo $game[14]; ?></h3>
                        <div class="content-menu-wrapper">
                            <?php
                            $link = "browser";
                            if($_SESSION['mobile'] === true) {
                                $link = "mobile";
                            } ?>
                            <p class="content-menu content-menu-footer"><a class="content-link sec-content-<?php echo $link; ?>version" href="#wordsearch-game-and-level-description-for-<?php echo $link; ?>" title="<?php echo $game[15]; ?>"><?php echo $game[16]; ?></a></p>
                            <p class="content-menu content-menu-footer"><a href="faqs-about-wordsearch" title="<?php echo $game[17]; ?>"><?php echo $game[18]; ?></a></p>
                        </div>
                    </div>
                    </div>
                <div class="content-holder">
                    <a id="wordsearch-game-and-level-description-for-browser"></a>
                    <a id="wordsearch-game-and-level-description-for-mobile"></a>
                    <h2 class="content-header"><?php echo $game[19]; ?></h2>
                    <div class="hidden browserversion">
                        <h3 class="content-header"><?php echo $game[20]; ?></h3>
                        <p><?php echo $game[21]; ?></p>
                        <h3 class="content-header marginer-t"><?php echo $game[22]; ?></h3>
                        <p><?php echo $game[23]; ?><a class="rules-link inner-link" title="Go back to the game rules" href="#"><?php echo $game[7]; ?></a>.</p>
                        <h3 class="content-header marginer-t"><?php echo $game[24]; ?></h3>
                        <p><?php echo $game[25]; ?></p>
                    </div>
                    <div class="hidden mobileversion">
                        <h3 class="content-header"><?php echo $game[26]; ?></h3>
                        <p><?php echo $game[27]; ?></p>
                        <h3 class="content-header marginer-t"><?php echo $game[22]; ?></h3>
                       <p><?php echo $game[29]; ?><a class="rules-link inner-link" title="Go back to the game rules!" href="#"><?php echo $game[7]; ?></a>.</p>
                        <h3 class="content-header marginer-t"><?php echo $game[24]; ?></h3>
                        <p><?php echo $game[30]; ?></p>
                    </div>
                    <p><strong><?php echo $game[31]; ?></strong></p>
                    <ul class="level-desc2">
                        <li><?php echo $game[32]; ?></li>
                        <li><?php echo $game[33]; ?></li>
                        <li><?php echo $game[34]; ?></li>
                    </ul>
                    <h3 class="content-header marginer-t"><?php echo $game[35]; ?></h3>
                    <p><?php echo $game[36]; ?></p>
                    <ul class="level-desc2">
                        <li><?php echo $game[37]; ?></li>
                        <li><?php echo $game[38]; ?></li>
                        <li><?php echo $game[39]; ?></li>
                    </ul>
                    <p><?php echo $game[40]; ?></p>
                    <h3 class="content-header marginer-t"><?php echo $game[41]; ?></h3>
                    <p><?php echo $game[42]; ?></p>
                    <h3 class="content-header marginer-t"><?php echo $game[43]; ?></h3>
                    <div class="content-1-in">
                        <p><?php echo $game[44]; ?></p>
                    </div>
                    <div class="content-2-in">
                        <p><?php echo $game[45]; ?></p>
                    </div>
                        <p><?php echo $game[46]; ?>
                        <?php if($_SESSION['logged_in'] == false) {
                            echo ' <a class="register opener content-textlink" title="'.$game[47].'" href="#register-user">'.$game[48].'</a> ';
                        } else {
                            echo $game[48];
                        } ?>
                            <?php echo $game[49]; ?></p>
                    <hr />
                    <h2 class="content-header"><?php echo $game[50]; ?></h2>
                    <div class="content-1-in">
                        <div class="hidden browserversion">
                        <h3 class="content-header"><?php echo $game[51]; ?></h3>
                        <p><?php echo $game[52]; ?></p>
                        <ul class="level-desc">
                            <li><?php echo $game[53]; ?><?php echo $game[61]; ?></li>
                            <li><?php echo $game[54]; ?><?php echo $game[62]; ?></li>
                            <li><?php echo $game[55]; ?><?php echo $game[63]; ?></li>
                        </ul>
                        <ul class="level-desc">
                            <li><?php echo $game[56]; ?><?php echo $game[82]; ?></li>
                            <li><?php echo $game[57]; ?><?php echo $game[84]; ?></li>
                        </ul>
                            <?php if($_SESSION['mobile'] == false) { ?>
                            <p class="content-menu"><a class="Beginner level" href="#level-beginner-browser"><?php echo $game[58]; ?></a></p>
                            <?php } ?>
                        <hr />
                        <h3 class="content-header"><?php echo $game[59]; ?></h3>
                        <p><?php echo $game[60]; ?></p>
                        <ul class="level-desc">
                            <li><?php echo $game[53]; ?><?php echo $game[64]; ?></li>
                            <li><?php echo $game[54]; ?><?php echo $game[65]; ?></li>
                            <li><?php echo $game[55]; ?><?php echo $game[66]; ?></li>
                        </ul>
                        <ul class="level-desc">
                            <li><?php echo $game[56]; ?><?php echo $game[83]; ?></li>
                            <li><?php echo $game[57]; ?><span><?php echo $level[1]; ?></span></li>
                        </ul>
                        <?php if($_SESSION['mobile'] == false) { ?>
                            <p class="content-menu"><a class="Easy level" href="#level-easy-browser"><?php echo $game[58]; ?></a></p>
                        <?php } ?>
                        <hr />
                            <h3 class="content-header"><?php echo $game[85]; ?></h3>
                            <p><?php echo $game[86]; ?></p>
                            <ul class="level-desc">
                                <li><?php echo $game[53]; ?><?php echo $game[67]; ?></li>
                                <li><?php echo $game[54]; ?><?php echo $game[68]; ?></li>
                                <li><?php echo $game[55]; ?><?php echo $game[69]; ?></li>
                            </ul>
                            <ul class="level-desc">
                                <li><?php echo $game[56]; ?><span><?php echo $game[87]; ?></span></li>
                                <li><?php echo $game[57]; ?> <span><?php echo $game[85]; ?></span></li>
                            </ul>
                            <?php if($_SESSION['mobile'] == false) { ?>
                                <p class="content-menu"><a class="Middle level" href="#level-middle-browser"><?php echo $game[58]; ?></a></p>
                            <?php } ?>
                            <hr />
                            <h3 class="content-header"><?php echo $game[88]; ?></h3>
                            <p><?php echo $game[89]; ?></p>
                            <ul class="level-desc">
                                <li><?php echo $game[53]; ?><?php echo $game[70]; ?></li>
                                <li><?php echo $game[54]; ?><?php echo $game[71]; ?></li>
                                <li><?php echo $game[55]; ?><?php echo $game[72]; ?></li>
                            </ul>
                            <ul class="level-desc">
                                <li><?php echo $game[56]; ?> <span><?php echo $game[91]; ?></span></li>
                                <li><?php echo $game[57]; ?> <span><?php echo $level[3]; ?></span></li>
                            </ul>
                            <?php if($_SESSION['mobile'] == false) { ?>
                            <p class="content-menu"><a class="Hard level" href="#level-hard-browser"><?php echo $game[58]; ?></a></p>
                            <?php } ?>
                            <hr />
                            <h3 class="content-header"><?php echo $game[93]; ?></h3>
                            <p><?php echo $game[92]; ?></p>
                            <ul class="level-desc">
                                <li><?php echo $game[53]; ?><?php echo $game[73]; ?></li>
                                <li><?php echo $game[54]; ?><?php echo $game[74]; ?></li>
                                <li><?php echo $game[55]; ?><?php echo $game[75]; ?></li>
                            </ul>
                            <ul class="level-desc">
                                <li><?php echo $game[56]; ?> <span><?php echo $game[94]; ?></span></li>
                                <li><?php echo $game[57]; ?> <span> <?php echo $game[95]; ?></span></li>
                            </ul>
                            <?php if($_SESSION['mobile'] == false) { ?>
                            <p class="content-menu"><a class="Expert level" href="#level-expert-browser"><?php echo $game[58]; ?></a></p>
                            <?php } ?>
                            <hr />
                            <h3 class="content-header"><?php echo $game[96]; ?></h3>
                            <p><?php echo $game[97]; ?></p>
                            <ul class="level-desc">
                                <li><?php echo $game[53]; ?><?php echo $game[76]; ?></li>
                                <li><?php echo $game[54]; ?> <?php echo $game[77]; ?></li>
                                <li><?php echo $game[55]; ?> <?php echo $game[78]; ?></li>
                            </ul>
                            <ul class="level-desc">
                                <li><?php echo $game[56]; ?> <span><?php echo $game[98]; ?></span></li>
                                <li><?php echo $game[57]; ?> <span> <?php echo $game[99]; ?></span></li>
                            </ul>
                            <?php if($_SESSION['mobile'] == false) { ?>
                            <p class="content-menu"><a class="Master level" href="#level-master-browser"><span class="hide-level">Master</span><?php echo $game[58]; ?></a></p>
                            <?php } ?>
                            <hr />
                            <h3 class="content-header"><?php echo $game[100]; ?></h3>
                            <p><?php echo $game[101]; ?></p>
                            <ul class="level-desc">
                                <li><?php echo $game[102]; ?> <?php echo $game[79]; ?></li>
                                <li><?php echo $game[54]; ?> <?php echo $game[80]; ?></li>
                                <li><?php echo $game[55]; ?> <?php echo $game[81]; ?></li>
                            </ul>
                            <ul class="level-desc">
                                <li><?php echo $game[56]; ?> <span><?php echo $game[103]; ?></span></li>
                                <li><?php echo $game[57]; ?> <span> <?php echo $game[104]; ?></span></li>
                            </ul>
                            <?php if($_SESSION['mobile'] == false) { ?>
                            <p class="content-menu"><a class="Godlike level" href="#level-godlike-browser"><?php echo $game[58]; ?></a></p>
                            <?php } ?>
                            <hr />
                                <p class="content-menu"><a class="content-link sec-content-mobileversion" href="#wordsearch-game-and-level-description-for-mobile" title="<?php echo $game[106]; ?>"><?php echo $game[107]; ?></a></p>
                        </div>
                        <div class="hidden mobileversion">
                            <h3 class="content-header"><?php echo $game[59]; ?></h3>
                            <p><?php echo $game[105]; ?></p>
                            <ul class="level-desc">
                                <li><?php echo $game[53]; ?><?php echo $game[61]; ?></li>
                                <li><?php echo $game[54]; ?><?php echo $game[62]; ?></li>
                                <li><?php echo $game[55]; ?><?php echo $game[63]; ?></li>
                            </ul>
                            <ul class="level-desc">
                                <li><?php echo $game[56]; ?><span><?php echo $game[108]; ?></span></li>
                                <li><?php echo $game[90]; ?><span><?php echo $game[109]; ?></span></li>
                                <li><?php echo $game[57]; ?><?php echo $game[84]; ?></li>
                            </ul>
                            <?php if($_SESSION['mobile'] == true) { ?>
                                <p class="content-menu"><a class="Beginner level" href="#level-beginner-mobile"><?php echo $game[58]; ?></a></p>
                            <?php } ?>
                            <hr />
                            <h3 class="content-header"><?php echo $game[85]; ?></h3>
                            <p><?php echo $game[110]; ?></p>
                            <ul class="level-desc">
                                <li><?php echo $game[53]; ?><?php echo $game[64]; ?></li>
                                <li><?php echo $game[54]; ?> <?php echo $game[65]; ?></li>
                                <li><?php echo $game[55]; ?> <?php echo $game[66]; ?></li>
                            </ul>
                            <ul class="level-desc">
                                <li><?php echo $game[56]; ?> <span><?php echo $game[111]; ?></span></li>
                                <li><?php echo $game[90]; ?><span><?php echo $game[112]; ?></span></li>
                                <li><?php echo $game[57]; ?> <span><?php echo $level[2]; ?></span></li>
                            </ul>
                            <?php if($_SESSION['mobile'] == true) { ?>
                                <p class="content-menu"><a class="Easy level" href="#level-midle-mobile"><?php echo $game[58]; ?></a></p>
                            <?php } ?>
                            <hr />
                            <h3 class="content-header"><?php echo $game[88]; ?></h3>
                            <p><?php echo $game[113]; ?></p>
                            <ul class="level-desc">
                                <li><?php echo $game[53]; ?><?php echo $game[67]; ?></li>
                                <li><?php echo $game[54]; ?> <?php echo $game[68]; ?></li>
                                <li><?php echo $game[55]; ?> <?php echo $game[69]; ?></li>
                            </ul>
                            <ul class="level-desc">
                                <li><?php echo $game[56]; ?> <span><?php echo $game[114]; ?></span></li>
                                <li><?php echo $game[90]; ?><span><?php echo $game[115]; ?></span></li>
                                <li><?php echo $game[57]; ?> <span><?php echo $level[3]; ?></span></li>
                            </ul>
                            <?php if($_SESSION['mobile'] == true) { ?>
                            <p class="content-menu"><a class="Middle level" href="#level-hard-mobile"><?php echo $game[58]; ?></a></p>
                            <?php } ?>
                            <hr />
                            <p class="content-menu"><a class="content-link sec-content-browserversion" href="#wordsearch-game-and-level-description-for-browser" title="<?php echo $game[116]; ?>"><?php echo $game[117]; ?></a></p>
                    </div>
                            <div class="content-menu-wrapper">
                                <?php if ($_SESSION['mobile'] == true) {
                                echo '<p class="content-menu"><a class="play-link" title="'.$game[118].'" href="#">'.$faq[10].'</a></p>';
                                } ?>
                                <p class="content-menu"><a class="content-link" href="#wordsearch-game-rules" title="<?php echo $game[119]; ?>"><?php echo $game[120]; ?></a></p>
                                <p class="content-menu"><a href="faqs-about-wordsearch" title="<?php echo $menu_bottom[0]; ?>"><?php echo $game[18]; ?></a></p>
                            </div>

                    </div>
                    </div>
                <?php if ($_SESSION['mobile'] == true) { ?>
                    <hr />
                    <div class="last-menu">
                        <p class="content-menu2"><a href="donate-for-wordsearch" title="<?php echo $faq[32]; ?>"><?php echo $menu_bottom[9]; ?></a></p>
                        <p class="content-menu2"><a href="#feedback-user" class="feedback opener" title="<?php echo $menu_bottom[2]; ?>"><?php echo $menu_bottom[3]; ?></a></p>
                        <p class="content-menu2"><a href="wordsearch-puzzle-disclaimer" title="<?php echo $donate[1]; ?>"><?php echo $menu_bottom[6]; ?></a></p>
                    </div>
                <?php } ?>
            </div>
            </div>
            <div id="footer-content"></div>
        </div>
    </div>
</div>
<div id="sound"></div>
<?php
    require_once ('php/forms.php');
    require_once ("php/footer.php");
?>
