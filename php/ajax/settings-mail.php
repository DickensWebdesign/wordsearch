<?php
session_start();
require_once '../connection.php';
require_once ('../../lang/en.php');

$error = false;
$errorMsg = "";
$errorWrapStart     = '<p class="form-error">';
$errorWrapEnd       = '</p>';
$userMailOld = trim(htmlentities($_POST['Old_mail']));
$userMailOld = $db->real_escape_string($userMailOld);
$userMailNew = trim(htmlentities($_POST['New_mail']));
$userMailNew = $db->real_escape_string($userMailNew);
$userPassword = trim(htmlentities($_POST['Password']));
$userPassword = md5($userPassword);
if (!filter_var($userMailOld, FILTER_VALIDATE_EMAIL) || !filter_var($userMailNew, FILTER_VALIDATE_EMAIL)) {
    $error = true;
    $errorMsg = $errorWrapStart.$error_return[0].$errorWrapEnd;
}
if (empty($_POST['Password']) || strlen($_POST['Password']) < 6) {
    $error = true;
    $errorMsg = $errorWrapStart.$error_return[5].$errorWrapEnd;
}
if ($error == false) {
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
    $stmt->bind_param("ss", $userMailOld, $hash);
    if ($stmt->execute()) {
        if (!$results = $stmt->fetch()) {
            $error = true;
            $errorMsg = $errorWrapStart . $error_return[14] . $errorWrapEnd;
        }
        $ID = $_SESSION['user_id'];
        $stmt->close();
        if ($error == false) {
            $query = "UPDATE user SET user_email = ? WHERE user_id = '$ID'";
            $stmt2 = $db->prepare($query);
            $stmt2->bind_param("s", $userMailNew);
            if (!$stmt2->execute()) {
                $error = true;
                $errorMsg = $errorWrapStart . $error_return[15] . $errorWrapEnd;
            }
            $db->close();
        }
    }
} ?>
<div id="replace-settings-mail">
<p class="form-requirements"><strong><?php echo $form_requirements[1]; ?></strong></p>
<p class="form-name"><label for="old_mail-mail"><?php echo $form_inputs[14]; ?></label><span class="form-input">
                <input type="email" id="old_mail-mail" required="required" placeholder="Old mail" maxlength="50" tabindex="1" /></span></p>
<p class="form-name"><label for=new_"mail-mail"><?php echo$form_inputs[9]; ?></label><span class="form-input">
                <input type="email" id="new_mail-mail" required="required" placeholder="New mail" maxlength="50" tabindex="2" /></span></p>
<p class="form-name"><label for="repeated_mail-mail"><?php echo $form_inputs[10]; ?></label><span class="form-input">
                <input type="email" id="repeater_mail-mail" required="required" placeholder="New mail" maxlength="50" tabindex="3" /></span></p>
<p class="form-name"><label for="password-mail"><?php echo $form_inputs[1]; ?></label><span class="form-input">
                <input type="password" id="password-mail" required="required" placeholder="Password" maxlength="50"  tabindex="4" /></span></p>
<hr/>
    <?php if($error !== false) { echo $errorMsg; } else { echo '<p class="form-success" id="success-green-settings-mail"><input type="hidden" id="success-value-settings-mail" value="' .  $userMailNew . '" />'.$form_success[7].'</p>'; }
echo '<input type="submit" class="user-button-single" id="submit-settings-mail" value="Change now" />';
    if($error == false) {
        echo '<p class="form-success red-color" id="success-settings-mail">'.$avatar[0].'<strong><span id="countdown-settings-mail">'.$avatar[1].'</p>';
    } else {
        echo '<p class="form-success red-color" id="success-settings-mail">'.$error_return[16].'<strong><span id="countdown-settings-mail">'.$avatar[4].'</p>';
    } ?>
    <div class="clearer"></div>
</div>