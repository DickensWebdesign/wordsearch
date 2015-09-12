<?php
session_start();
require_once("../../connection.php");
$id = $_SESSION['user_id_multi'];
$id = $db->real_escape_string($id);
$query = "DELETE FROM crossword_multiplayer WHERE rival_2 = ?";
$stmt = $db->prepare($query);
$stmt->bind_param("i", $id);
$stmt->execute();
$stmt->close();
$query = "UPDATE crossword_multiplayer_user SET invite_id = '0' WHERE user_id = ?";
$stmt = $db->prepare($query);
$stmt->bind_param("i", $id);
$stmt->execute();
$stmt->close();
?>