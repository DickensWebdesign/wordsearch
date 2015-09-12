<?php
session_start();
require_once '../connection.php';
$error = false;
$val = filter_var($_POST['value'], FILTER_VALIDATE_BOOLEAN);
if (is_bool($val)) {
    if ($val == true) {
        setcookie("user_id", $_SESSION['user_id'], time() + 60 * 60 * 24 * 365, '/');
        setcookie("user_name", $_SESSION['user_name'], time() + 60 * 60 * 24 * 365, '/');
    } else {
        setcookie("user_id", "", time() + 60 * 60 * 24 * -1, '/');
        setcookie("user_name", "", time() + 60 * 60 * 24 * -1, '/');
    }
}
echo '<input type="hidden" id="success-value-settings-permanent-login" value="';
if($val === true) { echo 'active-green'; } else { echo 'inactive-red'; }
echo '" />';
echo '<input type="hidden" value="'.$form_success[2][0].'" id="countdown-settings-permanent-login" />';
?>