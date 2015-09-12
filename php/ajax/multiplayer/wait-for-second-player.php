<?php
session_start();
require_once("../../header.php");
require_once("../../connection.php");
require_once ('../../../lang/en.php');

$gameCode = NULL;
$userId = $_SESSION['user_id_multi'];
$query = "SELECT game_id, game_code FROM `crossword_multiplayer` WHERE rival_1 = ? ";
$stmt = $db->prepare($query);
$stmt->bind_param("i", $id);
if ($stmt->execute()) {
    $stmt->bind_result($idGame, $code);
    $results = $stmt->fetch();
    if ($results) {
        $gameId = $idGame;
        $gameCode = $code;
    }
    $stmt->close();
    if($gameCode !== NULL && $gameCode !== 0 && $gameCode !== "false") {
        return $gameId;
    } elseif ($gameCode === "false") {
        return $check[4];
    } else {
        return $check[5];
    }
}

?>