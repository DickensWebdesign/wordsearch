<?php
    session_start();
    $bombs = htmlentities($_POST['bombs']);
    $bombs = (int)$bombs;
    require_once("../../connection.php");
    if(is_int($bombs))
    $query = "UPDATE crossword_user SET active_bombs = ? ";
    $stmt = $db->prepare($query);
    $stmt->bind_param("i", $bombs);
    $stmt->execute($query);
    $stmt->close();
?>