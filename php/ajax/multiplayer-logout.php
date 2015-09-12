<?php
session_start();
require_once ('../connection.php');
$id = $_SESSION['user_id_multi'];
unset($_SESSION['user_id_multi']);
if ($_SESSION['logged_in'] == false) {
    $query = "DELETE FROM crossword_multiplayer_user WHERE user_id = $id";
} else {
    $query = "UPDATE user SET crossword_multiplayer = 0 WHERE user_id = $id";
}
$db->query($query);
$db->close();
?>