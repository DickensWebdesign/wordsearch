<?php
session_start();
require_once("../../connection.php");
require_once ('../../../lang/en.php');

$gameCode = NULL;
$userId = $_SESSION['user_id_multi'];
$userId = $db->real_escape_string($userId);
$rival = $_SESSION['rival'];
$query = "SELECT game_id, code_game FROM crossword_multiplayer WHERE '$rival' = ?";
$stmt = $db->prepare($query);
$stmt->bind_param("i", $userId);
if ($stmt->execute()) {
    $stmt->bind_result($idGame, $code);
    $results = $stmt->fetch();
    if ($results) {
        $gameId = $idGame;
        $gameCode = $code;
    }
    $stmt->close();
    if($gameCode !== NULL && $gameCode != "0" && $gameCode != "false") {
        echo $gameId;
    } elseif ($gameCode == "false") {
        $query = "DELETE FROM crossword_multiplayer WHERE '$rival' = '$userId'";
        $result = $db->query($query);
        echo $check[4];
    } else {
        echo $check[5];
    }
} ?>