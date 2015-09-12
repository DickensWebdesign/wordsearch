
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
require_once('../../lang/en.php');

$errorWrapStart     = '<p class="form-error">';
$errorWrapEnd       = '</p>';
$successSend = false;
$mail = htmlentities($_POST['Mail']);
$mail = $db->real_escape_string($mail);
$subject = trim(htmlentities($_POST['Feedback']));
$subject = $db->real_escape_string($subject);
$message = trim(htmlentities($_POST['Message']));
$message = $db->real_escape_string($message);
$invalidMail = false;
$invalidSubject = false;
$invalidMessage = false;
$invalidMailMsg = "";
$invalidSubjectMsg = "";
$invalidMessageMsg = "";
$invalidSendMsg = "";
echo '<div id="replace-feedback">';
if(!filter_var($mail, FILTER_VALIDATE_EMAIL)) {
    $invalidMail = true;
    $invalidMailMsg = $errorWrapStart. $error_return[0] .$errorWrapEnd;
}
if(empty($_POST['Feedback'])) {
    $invalidSubject = true;
    $invalidSubjectMsg = $errorWrapStart. $error_return[1] .$errorWrapEnd;
}
if(empty($_POST['Message'])) {
    $invalidMessage = true;
    $invalidMessageMsg = $errorWrapStart.$error_return[2].$errorWrapEnd;
}
if($invalidMail == false && $invalidSubject == false && $invalidMessage == false) {
    $to = "info@wordsearch-online.eu";
    $emailSubject = "New Feedback: $mail";
    $emailBody = "You have received a new message\n\n";
    $emailBody .= " Here are the details:\n\n  Mail: $mail \n\n\n Subject: $subject \n\n Message: \n $message";
    $headers = 'To: <info@wordsearch-online.eu>' . "\r\n";
    $headers .= 'From:' .$mail;
    if (mail($to,$emailSubject,$emailBody,$headers)) {
        $successSend = true;
    } else {
        $successSend = false;
        $invalidSendMsg = $errorWrapStart . $error_return[3] . $errorWrapEnd;
    }
}
?>

<p class="form-requirements"><strong><?php echo $form_requirements[1]; ?></strong></p>
<p class="form-name"><label for="mail-feedback"><?php echo $form_inputs[0]; ?></label>
    <span class="form-input"><input type="email" id="mail-feedback" required="required" placeholder="<?php echo $form_placeholder[0]; ?>" maxlength="50" tabindex="1"/></span></p>
<p class="form-name"><label for="feedback-subject"><?php echo $form_inputs[4]; ?></label>
            <span class="form-input">
                <select id="feedback-subject" size="1" tabindex="2">
                    <option><?php echo $form_subject_options[0]; ?></option>
                    <option><?php echo $form_subject_options[1]; ?></option>
                    <option><?php echo $form_subject_options[2]; ?></option>
                    <option><?php echo $form_subject_options[3]; ?></option>
                    <option><?php echo $form_subject_options[4]; ?></option>
                </select>
            </span>
</p>
<p class="form-name"><label for="message-feedback"><?php $form_inputs[5]; ?></label>
    <?php if($_SESSION['mobile'] == true) { ?>
    <span id="form-counter"><?php echo $form_counter[0]; ?></span></p>
<?php } ?>
<div class="form-name"><textarea maxlength="2000" placeholder="<?php echo $form_placeholder[3]; ?>" id="message-feedback" required="required" rows="4" tabindex="3"></textarea></div>
<?php if($_SESSION['mobile'] == false) { ?>
    <p class="form-name"><span id="form-counter"><?php echo $form_counter[0]; ?></span></p>
<?php } ?>
<hr />
<?php
if($successSend == true) {
    echo '<p class="form-success" id="success-green-feedback">'. $form_success[0] .'</p>';
} else {
    echo $invalidMailMsg, $invalidSubjectMsg, $invalidMessageMsg, $invalidSendMsg;
}
echo '<input type="submit" class="user-button-single" id="submit-feedback" value="Send feedback" />';
if($successSend == true) {
    echo '<p class="form-success red-color" id="success-feedback">'. $form_success[1] .'<strong><span id="countdown-feedback">'. $form_success[2][0] .'<span></strong>'. $form_success[2][0] .'</span></p>';
} ?>
<div class="clearer"></div></div>