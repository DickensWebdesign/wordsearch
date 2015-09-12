<?php
// on Click -> start multiplayer game
session_start();
$error = "Unknown error! Please try again!";
require_once("../connection.php");
// on click start a game
// check for first player (true => insert ourselves as second player ....
$query = "SELECT id FROM crossword_multiplayer WHERE users_active = 0 AND mobile_game = ? AND rival_1 != 0 AND rival_1 != ? LIMIT 1";
$stmt = $db->prepare($query);
$stmt->bind_param("is", $_SESSION['mobile'], $_SESSION['user_id_multi']);
$stmt->execute();
$stmt->store_result();
if($stmt->num_rows() == 0) {
    $stmt->close();
    // .... else check if we are waiting for a second player (are we just [reloaded by user?] set as rival_1?)
    $query = "SELECT * FROM crossword_multiplayer WHERE rival_1 = ?";
    $stmt = $db->prepare($query);
    $stmt->bind_param("s", $_SESSION['user_id_multi']);
    $stmt->execute();
    $stmt->store_result();
    if($stmt->num_rows() == 0) {
        $stmt->close();
        // if we are not inside the db and we are not second player, we set ourselve as first player
        $query = "INSERT INTO crossword_multiplayer(rival_1, mobile_game) VALUES (?,?)";
        $player1 = $db->prepare($query);
        $player1->bind_param("si", $_SESSION['user_id_multi'], $_SESSION['mobile']);
        if ($player1->execute()) {
            $player1->close();
            $content = "R1"; // first player
        } else {
            $player1->close();
            $content = $error;
        }
    } else {
        $content = "R1";
    }
} else {
    $stmt->bind_result($id);
    while ($stmt->fetch()) {
        $rowId = $id;
    }
    // if first player waits for us
    $stmt->close();
    // check if second player just exist
    $query = "SELECT * FROM crossword_multiplayer WHERE rival_2 = ?";
    $stmt = $db->prepare($query);
    $stmt->bind_param("s", $_SESSION['user_id_multi']);
    $stmt->execute();
    $stmt->store_result();
    if($stmt->num_rows() == 0) {
        // and insert us as second player
        $stmt->close();
        $query = "UPDATE crossword_multiplayer SET rival_2 = ? WHERE id = ?";
        $player2 = $db->prepare($query);
        $player2->bind_param("ii", $_SESSION['user_id_multi'], $rowId);
        if ($player2->execute()) {
            $player2->close();
            $content = "R2"; // as second player

        } else {
            $player2->close();
            $content = $error;
        }
    } else {
        $content = "R2";
    }
}
echo $content;
?>