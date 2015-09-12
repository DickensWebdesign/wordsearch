<?php
// called by first user -> infinity loop till error kills MPG or second player is available
session_start();
$counter = 0;
require_once "../connection.php";
require_once ('../../../lang/en.php');

function checkSecondUser() {
    global $counter;
    global $db;
    $check = array();
    $return = "";
    $query = "SELECT rival_2, game_code FROM crossword_multiplayer WHERE users_active = 1 AND mobile_game = ? AND rival_1 = ? LIMIT 1";
    $stmt = $db->prepare($query);
    $stmt->bind_param("si", $_SESSION['mobile'], $_SESSION['user_id_multi']);
    $stmt->execute();
    $stmt->store_result();
    if ($stmt->num_rows == 0 && $counter <= 30) {
        $counter++;
        $stmt->close();
        sleep(1);
        checkSecondUser(); // no second player available - repeat the function
    }
    if($counter == 31) {
        $return = $check[6]; // no player available, we start game against AI
    }
    if($stmt->num_rows == 1) {
        $stmt->bind_result($rival_2, $game_code);
        while ($stmt->fetch()) {
            $_SESSION['enemy'] = $rival_2;
            $return = $game_code;
        }
        $stmt->close();
    }
    echo $return;
}
checkSecondUser();
?>