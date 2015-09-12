<?php
/* ************************************************** */
// Made with love, power and energy drinks

// Title: wordsearch-online.eu - wordsearch Puzzle for everyone


// Made by FitKidsGames
// All rights reserved
// early season 2015

/* ************************************************** */


require_once '../connection.php';
require_once ('../../lang/en.php');

$errorWrapStart     = '<p class="form-error">';
$errorWrapEnd       = '</p>';
$userEmail = trim(htmlentities($_POST['Mail']));
$userEmail = $db->real_escape_string($userEmail);
$invalidSend = false;
$invalidMail = false;
$badResponse = false;
$invalidMailMsg = "";
$invalidSendMsg = "";
$badResponseMsg = "";
$success = false;
echo '<div id="replace-reset">';
if(!filter_var($userEmail, FILTER_VALIDATE_EMAIL)) {
    $invalidMail = true;
    $invalidMailMsg = $errorWrapStart . $error_return[0]. $errorWrapEnd;
}
if($invalidMail == false) {
    $query = "SELECT `user_name` FROM `user` WHERE `user_email` = ?";
    if ($stmt = $db->prepare($query)) {
        $stmt->bind_param("s", $userEmail);
        $stmt->execute();
        $stmt->bind_result($name);
        if(!$results = $stmt->fetch()) {
            $badResponse = true;
            $badResponseMsg = $errorWrapStart . $error_return[9] . $errorWrapEnd;
        } else {
            if ($results) {
                $userName = $name;
            }
            $stmt->close();
            $password = '';
            $pool = "qwertzupasdfghkyxcvbnm";
            $pool .= "23456789";
            $pool .= "WERTZUPLKJHGFDSAYXCVBNM";
            srand ((double)microtime()*1000000);
            for($index = 0; $index < 8; $index++) {
                $password .= substr($pool,(rand()%(strlen ($pool))), 1);
            }
            $passClean = $password;
            $password = trim(htmlentities($password));
            $password = md5($password);
            $saltOne = 'jj6&35ff*#';
            $saltTwo = '45Ee+##%6v';
            $pwdSplit=str_split($password,(strlen($password)/2)+1);
            $iterate = 40000;
            $hash='';
            for ($i=0;$i<=$iterate;$i++) {
                $hash=hash('sha512', $saltOne.$pwdSplit[0].$hash.$saltTwo.$pwdSplit[1]);
            }
            $query = "UPDATE `user` SET `user_password` = ? WHERE `user_email` = ?";
            if($stmt = $db->prepare($query)) {
                $stmt->bind_param("ss", $hash, $userEmail);
                if($stmt->execute()) {
                    // sent login details to user
                    $to = $userEmail;
                    $email_subject = $reset[0] . $userName;
                    $email_body = '
                        <html>
                            <head>
                              <title>'.$reset[1].' </title>
                            </head>
                            <body>
                                <h2> '.$reset[2]. $userName .$reset[3].'</h2>
                                <p>'.$reset[4].'</p>
                                <p>'.$form_inputs[0] . $userEmail. '<br />'.$reset[5] . $passClean. '</p>
                                <p>'.$reset[6].'
                                    <a href="http://www.wordsearch-game.com" title="'.$reset[7].'" target="_blank">'.$reset[8].'</a>
                                </p>
                            </body>
                        </html>
                        ';
                    $headers = 'To: <' . $userEmail . '>' . "\r\n" .
                        'From: service@wordsearch-online.eu' . "\r\n" .
                        'Reply-To: service@wordsearch-online.eu' . "\r\n" .
                         "MIME-Version: 1.0" . "\r\n" .
                         "Content-type: text/html; charset=UTF-8" . "\r\n";
                    if(mail($to, $email_subject, $email_body, $headers)) {
                        $success = true;
                        ?>
                        <div class="success-header"><img src="<?php echo $_SESSION['root']; ?>img/icons/approved40.png" alt="<?php echo $reset[9]; ?>">
                            <span class="success-header-message"><?php echo $reset[10]; ?></span>
                        </div>
                        <p>&nbsp;</p>
                        <p class="success-message"><?php echo $reset[11]; ?><br /><?php echo $reset[12]; ?><br /><br /><?php echo $reset[13]; ?></p>
                        <p>&nbsp;</p>
                        <hr /><p>&nbsp;</p><input type ="button" class="closer user-button-single" value="Close"/><div class="clearer"></div>
                    <?php } else {
                        $db->rollback();
                        $invalidSend = true;
                        $invalidSendMsg = $errorWrapStart .$reset[14]. " <strong>" . $userEmail ."</strong>" . $errorWrapEnd;
                    }
                } else {
                    $badResponse = true;
                    $badResponseMsg = $errorWrapStart . $reset[15] . $errorWrapEnd;
                }
            }
        }
    }
    $stmt->free_result();
    $stmt->close();
}
if($badResponse == true || $invalidMail == true  || $invalidSend == true) {
    ?>
    <p class="form-requirements"><strong><?php echo $reset[16]; ?></strong></p>
    <p class="form-name"><label for="mail-reset"><?php echo $form_inputs[0]; ?></label><span class="form-input">
            <input type="email" id="mail-reset" required="required" placeholder="Mail" maxlength="50" tabindex="1"/>
        </span></p><hr/>
    <?php
    echo $badResponseMsg . $invalidMailMsg . $invalidSendMsg;
    ?>
    <input type="submit" class="user-button-single" value="<?php echo $form_button_value[3]; ?>"/>
    <div class="clearer"></div>
<?php
}
echo '</div>';
?>