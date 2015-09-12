<?php
/* ************************************************** */
// Made with love, power and energy drinks

// Title: wordsearch-online.eu - wordsearch Puzzle for everyone


// Made by FitKidsGames
// All rights reserved
// early season 2015

/* ************************************************** */


session_start();
require_once '../connection.php';
require_once ('../../lang/en.php');

define('SECURE', true);

$errorWrapStart     = '<p class="form-error">';
$errorWrapEnd       = '</p>';
$invalidPlayer      = false;
$invalidMail        = false;
$invalidPassword    = false;
$badResponse        = false;
$invalidPlayerMsg   = "";
$invalidMailMsg     = "";
$invalidPasswordMsg = "";
$badResponseMsg     = "";
$userPlayer = htmlentities($_POST['Playername']);
$userPlayer = $db->real_escape_string($userPlayer);
$userEmail = trim(htmlentities($_POST['Mail']));
$userEmail = $db->real_escape_string($userEmail);
$userPassword = trim(htmlentities($_POST['Password']));
$userPassword = md5($userPassword);

if (!filter_var($userEmail, FILTER_VALIDATE_EMAIL)) {
    $invalidMail = true;
    $invalidMailMsg = $errorWrapStart . $error_return[0] . $errorWrapEnd;
}
if (empty($userPassword)) {
    $invalidPassword = true;
    $invalidPasswordMsg = $errorWrapStart . $error_return[5] . $errorWrapEnd;
} elseif(strlen($_POST['Password']) < 6) {
    $invalidPassword = true;
    $invalidPasswordMsg = $errorWrapStart . $error_return[6] . $errorWrapEnd;
}
if (empty($userPlayer)) {
    $invalidPlayer = true;
    $invalidPlayerMsg = $errorWrapStart . $error_return[7] . $errorWrapEnd;
} elseif(strlen($_POST['Playername']) < 3) {
    $invalidPlayer = true;
    $invalidPlayerMsg = $errorWrapStart . $error_return[8] . $errorWrapEnd;
}
?>
<div id="replace-register">
<?php
//Benutzereingaben validieren
if($invalidMail == false && $invalidPassword == false && $invalidPlayer == false) {
    $saltOne = 'jj6&35ff*#';
    $saltTwo = '45Ee+##%6v';
    $pwdSplit = str_split($userPassword, (strlen($userPassword) / 2) + 1);
    $iterate = 40000;
    $hash = '';
    for ($i = 0; $i <= $iterate; $i++) {
        $hash = hash('sha512', $saltOne . $pwdSplit[0] . $hash . $saltTwo . $pwdSplit[1]);
    }
    // checking for existing mail
    $query0 = "SELECT `user_email` FROM `user` WHERE `user_email` = ? OR user_name = ?";
    $stmt = $db->prepare($query0);
    $stmt->bind_param("ss", $userEmail, $userPlayer);
    $stmt->execute();
    if ($stmt->fetch()) {
        $badResponse = true;
        $badResponseMsg = $errorWrapStart . "Your mail or player just exist in our database! You couldn't registered!" . $errorWrapEnd;
    }
    $stmt->close();
    /* if not exist, register... success message */
    if ($badResponse == false) {
        $query = "INSERT INTO `user` (`user_name`, `user_email`, `user_password`) VALUES (?,?,?)";
        $insert = $db->prepare($query);
        $insert->bind_param("sss", $userPlayer, $userEmail, $hash);
        $insert->execute();
        $insert->close();
        $query2 = "SELECT `user_id` FROM `user` WHERE `user_name` = ?";
        $stmt2 = $db->prepare($query2);
        $stmt2->bind_param("s", $userPlayer);
        if ($stmt2->execute()) {
            $stmt2->bind_result($userId);
            if ($result = $stmt2->fetch()) {
                $_SESSION['user_id'] = $userId;
                $stmt2->close();
            }
        }
        $query = "INSERT INTO crossword_user_made_games (user_id) VALUES (?)";
        $insert = $db->prepare($query);
        $insert->bind_param("i", $_SESSION['user_id']);
        $insert->execute();
        $insert->close();
        $query = "INSERT INTO crossword_user_made_games_mobile (user_id) VALUES (?)";
        $insert = $db->prepare($query);
        $insert->bind_param("i", $_SESSION['user_id']);
        $insert->execute();
        $insert->close();
        $query3 = "INSERT INTO user_results (user_id) VALUES (?)";
        $insert2 = $db->prepare($query3);
        $insert2->bind_param("i", $_SESSION['user_id']);
        $insert2->execute();
        $insert2->close();
        $query4 = "INSERT INTO trophies (user_id) VALUES (?)";
        $insert = $db->prepare($query4);
        $insert->bind_param("i", $_SESSION['user_id']);
        $insert->execute();
        $insert->close();
        ?>
        <div class="success-header"><img src="<?php echo $_SESSION['root']; ?>img/icons/approved40.png" alt="<?php echo $register[0]; ?>">
            <span class="success-header-message"><?php echo $register[1]; ?></span>
        </div><p>&nbsp;</p>
        <div class="success-message"><p><strong><?php echo $register[2]; ?></strong></p>
            <ul>
                <li><?php echo $register[3]; ?></li>
                <li><?php echo $register[4]; ?></li>
                <li><?php echo $register[5]; ?></li>
                <li><?php echo $register[6]; ?></li>
                <li><?php echo $register[7]; ?></li>
            </ul>
        </div><p>&nbsp;</p><hr /><p>&nbsp;</p>
        <input type="button" class="login opener user-button-single" value="Continue"/>
        <div class="clearer"></div>
    <?php } 
}
if($invalidMail == true || $invalidPassword == true || $invalidPlayer == true || $badResponse == true) { ?>
    <p class="form-requirements"><strong><?php echo $form_requirements[1]; ?></strong></p>
    <p class="form-name"><label for="playername-register"><?php echo $form_inputs[3]; ?></label>
        <span class="form-input"><input type="text" id="playername-register" required="required" placeholder="Playername" maxlength="12" tabindex="1" /></span></p>
    <p class="form-name"><label for="mail-register"><?php echo  $form_inputs[0]; ?></label>
        <span class="form-input"><input type="email" id="mail-register" required="required" placeholder="example@examp.com" maxlength="50" tabindex="2" /></span></p>
    <p class="form-name"><label for="password-register"><?php echo  $form_inputs[1]; ?></label>
        <span class="form-input"><input type="password" id="password-register" required="required" placeholder="Password" maxlength="50" tabindex="3" /></span></p>
    <hr/>
    <?php
    echo $invalidPlayerMsg . $invalidMailMsg . $invalidPasswordMsg . $badResponseMsg;
    ?>
    <input type="submit" class="user-button-single" value="Send registration" />
    <div class="clearer"></div>
<?php
}
?>
</div>