<?php
/* ************************************************** */
// Made with love, power and energy drinks

// Title: wordsearch-online.eu - Wordsearch Puzzle for everyone


// Made by FitKidsGames
// All rights reserved
// early season 2015

/* ************************************************** */


session_start();
require_once '../connection.php';
require_once ('../../lang/en.php');

$errorWrapStart     = '<p class="form-error">';
$errorWrapEnd       = '</p>';
$error = false;
$userID = $_SESSION['user_id'];
$userID = $db->real_escape_string($userID);
$passNew = $_POST['New_password'];
$passOld = $_POST['Old_password'];
$passOld = trim(htmlentities($passOld));
$passOld = md5($passOld);
$saltOne = 'jj6&35ff*#';
$saltTwo = '45Ee+##%6v';
$pwdSplit=str_split($passOld,(strlen($passOld)/2)+1);
$iterate = 40000;
$hash='';
echo '<div id="replace-password">';
if(strlen($passOld) < 6) {
    $error .= $errorWrapStart .$error_return[17] .$errorWrapEnd;
}
if (strlen($passNew) < 6) {
    $error .= $errorWrapStart . $error_return[18] .$errorWrapEnd;
}
if($error === false) {
    for ($i = 0; $i <= $iterate; $i++) {
        $hash = hash('sha512', $saltOne . $pwdSplit[0] . $hash . $saltTwo . $pwdSplit[1]);
    }
    $query = "SELECT user_email FROM user WHERE user_id = ? AND user_password = ?";
    $stmt = $db->prepare($query);
    $stmt->bind_param("is", $userID, $hash);
    $stmt->execute();
    $stmt->bind_result($mail);
    $stmt->store_result();
    if ($stmt->num_rows() != 0) {
        $results = $stmt->fetch();
        $email = $mail;
        $stmt->free_result();
        $stmt->close();
        // pass New
        $passNew = trim(htmlentities($passNew));
        $passNew = md5($passNew);
        $pwdSplit = str_split($passNew, (strlen($passNew) / 2) + 1);
        $hash = '';
        for ($i = 0; $i <= $iterate; $i++) {
            $hash = hash('sha512', $saltOne . $pwdSplit[0] . $hash . $saltTwo . $pwdSplit[1]);
        }
        $query = "UPDATE user SET user_password = ? WHERE user_id = ?";
        if ($stmt = $db->prepare($query)) {
            $stmt->bind_param("si", $hash, $userID);
            if ($stmt->execute()) {
                // sent login details to user
                $to = $email;
                $email_subject = $reset[0]. $_SESSION['user_name'];
                $email_body = '
                    <html>
                        <head>
                          <title>'.$reset[1].'</title>
                        </head>
                        <body>
                            <h2>' .$reset[2]. $_SESSION['user_name'] . $form_success[8].'</h2>
                            <p>'.$reset[4].'</p>
                            <p>'.$form_inputs[0] . $email . '<br />'.$reset[5]. $_POST['New_password'] . '</p>
                            <p>'.$reset[6].'
                                <a href="http://www.wordsearch-game.com" title="'.$reset[7].'" target="_blank">'.$reset[8].'</a>
                            </p>
                        </body>
                    </html>
                    ';
                $headers = 'To: <' . $email . '>' . "\r\n" .
                    'From: service@wordsearch-online.eu' . "\r\n" .
                    'Reply-To: service@wordsearch-online.eu' . "\r\n" .
                    "MIME-Version: 1.0" . "\r\n" .
                    "Content-type: text/html; charset=UTF-8" . "\r\n";
                if (!mail($to, $email_subject, $email_body, $headers)) {
                    $error .= $errorWrapStart . $reset[14] . "<strong>" . $email . "</strong>!" . $errorWrapEnd;
                }
            }
        } else {
            echo $errorWrapStart. $reset[15]   . $errorWrapEnd;
        }
    } else {
        $error = $errorWrapStart. $reset[17] . $errorWrapEnd;
    }
}
if ($error === false) { ?>
<div class="success-header">
    <img src="<?php echo $_SESSION['root']; ?>img/icons/approved40.png" alt="Password change successful">
    <span class="success-header-message"><?php echo $reset[10]; ?></span>
</div><p>&nbsp;</p>
<p class="success-message"><?php echo $reset[11]; ?><br/><?php echo $reset[12]; ?><br/><br/><?php echo $reset[13]; ?></p>
<p>&nbsp;</p><hr/><p>&nbsp;</p>
<input type="button" class="closer user-button-single" value="Close"/>
<div class="clearer"></div>
 <?php } else { ?>
<p class="form-requirements"><strong><?php echo $form_requirements[1]; ?></strong></p>
<p class="form-name"><label for="old_password-password"><?php echo $form_inputs[11]; ?></label>
    <span class="form-input"><input type="password" id="old_password-password" class="unequal" required="required" placeholder="Old pass" maxlength="50" tabindex="1" /></span></p>
<p class="form-name"><label for="new_password-password"><?php echo $form_inputs[12]; ?></label>
    <span class="form-input"><input type="password" id="new_password-password" class="unequal repeater" required="required" placeholder="New pass" maxlength="50" tabindex="2" /></span></p>
<p class="form-name"><label for="repeated_password-password"><?php echo $form_inputs[13]; ?></label>
    <span class="form-input"><input type="password" id="repeated_password-password" class="repeater" required="required" placeholder="New pass" maxlength="50" tabindex="3" /></span></p>
<hr/>
<? echo $error; ?>
<input type="submit" class="user-button-single" value="<?php echo $form_button_value[8]; ?>" />
<div class="clearer"></div>
<?php }
echo '</div>'
?>