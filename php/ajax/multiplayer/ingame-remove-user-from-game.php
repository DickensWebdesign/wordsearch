<?php
    session_start();
    $id = $_SESSION['user_id_multi'];
    $rival = htmlentities($_SESSION['rival']);
    $rival = (int)$rival;
    require_once("../../connection.php");
    $query = "UPDATE crossword_multiplayer SET '$rival' = '0' WHERE '$rival' = '$id";
    $result = $db->query($query);
?>