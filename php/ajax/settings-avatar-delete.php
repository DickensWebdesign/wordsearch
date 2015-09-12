<?php
session_start();
require_once '../connection.php';
require_once ('../../lang/en.php');

if(file_exists($_SESSION['root'] ."/img/user/profile/" . $_SESSION['user_name'] . ".jpg")) {
    @unlink($_SESSION['root'] ."img/user/profile/" . $_SESSION['user_name'] . ".jpg");
    @unlink($_SESSION['root'] . "img/user/profile/" . $_SESSION['user_name'] . "-small.jpg");
}
$query = "UPDATE user SET user_picture = 0 WHERE user_id = ?";
$id = $db->real_escape_string($_SESSION['user_id']);
$stmt = $db->prepare($query);
$stmt->bind_param("i", $id);
$stmt->execute();
$db->close();
$_SESSION['user_picture'] = false;
echo '<input type="hidden" id="success-value-settings-avatar-delete" value="'.$avatar[3].'" />';
echo '<input id="countdown-settings-avatar-delete" type="hidden" value="'.$form_success[2][0].'" />';
?>
