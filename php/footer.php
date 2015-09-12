<?php
echo '<script src="' . $modulPath. '/jquery/jquery.min.js"></script>';
echo '<script src="' . $modulPath. '/validation/formValidation.js"></script>';
echo '<script src="' . $_SESSION['root']. 'js/page.js" ></script>';
// multiplayer
if (strpos($path, "multiplayer") && !strpos($path, "game")) {
    echo '<script src="' . $modulPath. '/page/multiplayer-room.js"></script>';
}
if (strpos($path, "game")) {
    echo '<script src="' . $modulPath. '/game/game-multiplayer.js"></script>';

}
elseif (strpos($path, "memberarea")) {
// memberarea
    echo '<script src="' . $modulPath. '/user/cropper.js"></script>';
    echo '<script src="' . $modulPath. '/page/memberarea.js"></script>';
}

// dev: comment out if

/* if("http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'] == $_SESSION['root']) { */
    echo '<script type="text/javascript" src="' . $modulPath. '/game/game.js"></script>';
/* } */
if($_SERVER['REQUEST_URI'] == "/free-printable-wordsearch-puzzle") {
    echo '<script type="text/javascript" src="' . $modulPath. '/game/game-print.js"></script>';
    echo '<script type="text/javascript" src="' . $modulPath. '/page/page-print.js"></script>';
}

/* if(dirname($_SERVER['PHP_SELF']) == "/index.php" && $_SERVER['REQUEST_URI'] !== "/free-printable-wordsearch-puzzle") { */
    echo '<script type="text/javascript" src="' . $modulPath . '/page/singleplayer.js"></script>';
/* } */
?>
<script src="https://apis.google.com/js/plusone.js"></script>
<script type="text/javascript">
(function() {
var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
po.src = 'https://apis.google.com/js/plusone.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
})();
window.twttr=(function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],t=window.twttr||{};if(d.getElementById(id))return;js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);t._e=[];t.ready=function(f){t._e.push(f);};return t;}(document,"script","twitter-wjs"));
</script>
<a href="https://plus.google.com/112606969232275133705" title="Share on Google Plus" rel="publisher"></a>
<input type="hidden" id="mob" value="<?php echo (int)$_SESSION['mobile']; ?>" />
</body>
</html>