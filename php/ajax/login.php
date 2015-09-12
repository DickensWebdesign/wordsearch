<?php
/* ************************************************** */// Made with love, power and energy drinks

// Title: wordsearch-online.eu - wordsearch Puzzle for everyone

// Made by FitKidsGames
// All rights reserved
// early season 2015

/* ************************************************** */

session_start();
require_once '../connection.php';
require_once ('../../lang/en.php');
if(isset($_SESSION['user_id_multi'])) {
    $id = (int)$_SESSION['user_id_multi'];
    $query = "DELETE FROM crossword_multiplayer_user WHERE user_id = $id";
    $result = $db->query($query);
}
$errorWrapStart     = '<p class="form-error">';
$errorWrapEnd       = '</p>';
$invalidMail        = false;
$invalidPassword    = false;
$badResponse        = false;
$invalidMailMsg     = "";
$invalidPasswordMsg = "";
$badResponseMsg     = "";
$userEmail = trim(htmlentities($_POST['Mail']));
$userEMail = $db->real_escape_string($userEmail);
$userPassword = trim(htmlentities($_POST['Password']));
$userPassword = md5($userPassword);
$rememberMe = filter_var($_POST['Remember'], FILTER_VALIDATE_BOOLEAN);
if (!filter_var($userEmail, FILTER_VALIDATE_EMAIL)) {
    $invalidMail = true;
    $invalidMailMsg = $errorWrapStart . $error_return[0] . $errorWrapEnd;
}
if (empty($_POST['Password'])) {
    $invalidPassword = true;
    $invalidPasswordMsg = $errorWrapStart . $error_return[6] . $errorWrapEnd;
} elseif(strlen($_POST['Password']) < 6) {
    $invalidPassword = true;
    $invalidPasswordMsg = $errorWrapStart . $error_return[5] . $errorWrapEnd;
}
if ($invalidMail == false && $invalidPassword == false) {
    $saltOne = 'jj6&35ff*#';
    $saltTwo = '45Ee+##%6v';
    $pwdSplit = str_split($userPassword, (strlen($userPassword) / 2) + 1);
    $iterate = 40000;
    $hash = '';
    for ($i = 0; $i <= $iterate; $i++) {
        $hash = hash('sha512', $saltOne . $pwdSplit[0] . $hash . $saltTwo . $pwdSplit[1]);
    }
    $query = "SELECT `user_name`,`user_id` FROM `user` WHERE `user_email` = ? AND `user_password` = ?";
    $stmt = $db->prepare($query);
    $stmt->bind_param("ss", $userEmail, $hash);
    if ($stmt->execute()) {
        $stmt->bind_result($userName, $userId);
        $results = $stmt->fetch();
        if ($results) {
            $_SESSION['user_name'] = $userName;
            $_SESSION['user_id'] = $userId;
            $_SESSION['logged_in'] = true;
        } else {
            $badResponse = true;
            $badResponseMsg = $errorWrapStart . $error_return[4] . $errorWrapEnd;
        }
    }
    $stmt->close();
    $query = "UPDATE user SET last_login = NOW() WHERE user_id = $userId";
    $db->query($query);
}
echo '<div id="replace-login">';
if ($badResponse == true || $invalidMail == true || $invalidPassword == true) { ?>
    <div id="replace-login">
        <p class="form-requirements"><strong><?php echo $form_requirements[0]; ?></strong></p>
        <p class="form-name"><label for="mail-login"><?php echo $form_inputs[0]; ?></label>
            <span class="form-input"><input type="email" id="mail-login" required="required" placeholder="<?php echo $form_placeholder[0]; ?>" maxlength="50" tabindex="1"/></span></p>
        <p class="form-name"><label for="password-login"><?php echo $form_inputs[1]; ?></label>
            <span class="form-input"><input type="password" id="password-login" required="required" placeholder="<?php echo $form_placeholder[1]; ?>" maxlength="50" tabindex="2"/></span></p>
        <p class="form-name"><label for="remember-login"><?php echo $form_inputs[2]; ?></label>
            <span class="form-input">
    <?php if ($_SESSION['mobile'] == true) {
        echo '<label class="switch">';
    }
    echo '<input type="checkbox" id="remember-login" tabindex="3" class="keeping ';
    if ($_SESSION['mobile'] == true) {
        echo ' switch-input';
    }
    echo '" />';
    if ($_SESSION['mobile'] == true) {
        echo '<span class="switch-label" data-on="On" data-off="Off"></span><span class="switch-handle"></span></label>';
    } ?>
    </span></p><hr/>
    <?php
    echo $invalidMailMsg . $invalidPasswordMsg . $badResponseMsg;
    ?>
    <input type="submit" class="user-button-single" value="login" />
    <div class="bwc-modal-footer"><a href="#reset-password" class="reset opener" title="<?php echo $form_header[2]; ?>"><?php echo $form_links[0]; ?></a></div>
    </div>
<?php } else {
    if ($rememberMe == true) {
        setcookie("user_id", $_SESSION['user_id'], time() + 60 * 60 * 24 * 365, '/');
        setcookie("user_name", $_SESSION['user_name'], time() + 60 * 60 * 24 * 365, '/');
    } else {
        setcookie("user_id", "", time() + 60 * 60 * 24 * -1, '/');
        setcookie("user_name", "", time() + 60 * 60 * 24 * -1, '/');
    } ?>
    <div class="success-header">
        <img src="<?php echo $_SESSION['root']; ?>img/icons/approved40.png" alt="success">
        <span class="success-header-message"><?php echo $form_login[0]; ?></span>
    </div>
    <p>&nbsp;</p>
    <p class="success-message" id="success-login"><?php echo $form_login[1]; ?></p><p>&nbsp;</p><hr />
    <p>&nbsp;</p>
    <p><input type="button" class="redirect closer user-button-single" value="<?php echo $form_login[2]; ?>"/></p>
    <div class="clearer"></div>
    <script>
    window.setTimeout(function () {
        location.reload();
    }, 5000);
    var secRed = 4;
    setInterval(function () {
            $('#replace-login').find('#success-login').html('You will redirected in ' + secRed + ' seconds!');
            secRed--;
    }, 1000);
</script>
<?php }
echo '</div>';
?>