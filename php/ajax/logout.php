<?php
/* ************************************************** */
// Made with love, power and energy drinks

// Title: wordsearch-online.eu - wordsearch Puzzle for everyone


// Made by FitKidsGames
// All rights reserved
// early season 2015

/* ************************************************** */


session_start();
require_once("../connection.php");
require_once ('../../lang/en.php');

$id = (int)$_SESSION['user_id'];
$query = "DELETE FROM crossword_multiplayer_user WHERE user_id = $id";
$result = $db->query($query);
$_SESSION = array();
session_destroy();
setcookie("logged_in", "", microtime() + 30 * 60 * 24 * -1, '/');
setcookie("user_id", "", microtime() + 60 * 60 * 24 * -1, '/');
setcookie("user_name", "", microtime() + 60 * 60 * 24 * -1, '/');
?>
<div id="replace-logout">
    <div class="success-header">
        <img src="<?php echo $_SESSION['root']; ?>img/icons/approved40.png" alt="">
        <span class="success-header-message"><?php echo$logout[0]; ?></span>
    </div>
    <p>&nbsp;</p>
    <p class="success-message" id="success-logout"><?php echo $form_login[1]; ?></p><p>&nbsp;</p><hr />
    <p>&nbsp;</p><p>&nbsp;</p>
    <input type="button" class="redirect closer user-button-single" value="Redirect me now"/>
    <div class="clearer"></div>
</div>
<script>
    window.setTimeout(function() {
        location.reload();
    }, 5000);
    var secRed = 4;
    setInterval(function() {
            $('#replace-logout').find('#success-logout').html('You will redirected in ' + secRed + ' seconds!');
            secRed--;
    }, 1000);
</script>