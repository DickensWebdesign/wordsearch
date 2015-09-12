<?php
require_once "../connection.php";

// DELETE USER ENTRY IN DB (user multiplayer registration)
$query = "DELETE * FROM crossword_multiplayer_user WHERE user_id = ?";
if($stmt = $db->prepare($query)) {
    $stmt->bind_param("i", $_SESSION['user_id']);
}
$stmt->execute();
$stmt->close();

// DELETE IN GAME DATA
require_once 'deleteMultiplayerInGameData.php';