<?php
session_start();
require_once("../../connection.php");
$id = $_SESSION['user_id_multi'];
$id = $db->real_escape_string($id);
$reply = $_SESSION['replier'];
$reply = $db->real_escape_string($reply);
$query = "DELETE FROM crossword_multiplayer WHERE rival_1 = ?";
$stmt = $db->prepare($query);
$stmt->bind_param("i", $id);
$stmt->execute();
$stmt->close();
$query = "UPDATE crossword_multiplayer_user SET invite_id = '0' WHERE user_id = ?";
$stmt = $db->prepare($query);
$stmt->bind_param("i", $reply);
$stmt->execute();
$stmt->close();
?>