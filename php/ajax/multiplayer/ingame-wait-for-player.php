<?php
session_start();
require_once("../../connection.php");
$gameId = NULL;
$userId = $_SESSION['user_id_multi'];
$userId = $db->real_escape_string($userId);
$query = "SELECT game_id FROM crossword_multiplayer WHERE `rival_1` = ? OR `rival_2` = ?";
$stmt = $db->prepare($query);
$stmt->bind_param("ii", $userId, $userId);
if ($stmt->execute()) {
    $stmt->bind_result($idGame);
    $results = $stmt->fetch();
    if ($results) {
        $gameId = $idGame;
    }
    $stmt->close();
    if ($gameId == "0") {
        echo "true";
    } else {
        echo "false";
    }
} ?>