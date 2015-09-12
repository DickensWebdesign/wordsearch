<?php
session_start();
require_once("../../connection.php");
require_once ('../../../lang/en.php');

$id = $_SESSION['user_id_multi'];
$id = $db->real_escape_string($id);
$val = "false";
$query = "UPDATE crossword_multiplayer_user SET invite_id = '0' WHERE user_id = ?";
$stmt = $db->prepare($query);
$stmt->bind_param("i", $id);
$stmt->execute();
$stmt->close();
$query = "UPDATE crossword_multiplayer SET code_game = '$val' WHERE rival_2 = ?";
$stmt = $db->prepare($query);
$stmt->bind_param("i", $id);
if(!$stmt->execute()) {
echo '<p class="color-red aligner">'.$error_return[20].'</p>';
}
$stmt->close();
?>