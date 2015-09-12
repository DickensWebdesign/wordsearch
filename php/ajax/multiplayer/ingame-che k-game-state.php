<?php
session_start();
require_once("../../connection.php");
$id = htmlentities($_SESSION['user_id_multi']);
$id = (int)$id;
$rival = $_SESSION['rival'];
$bombsNum = NULL;
$returnData = [];
$query = "SELECT '$rival'_bombs FROM crossword_online WHERE '$rival' = ? LIMIT 1";
$stmt = $db->prepare($query);
$stmt->bind_parameter('i', $id);
if ($stmt->execute()) {
    $stmt->bind_result($res);
    $results = $stmt->fetch();
    if ($results) {
        $bombsNum = $res;
        if ($bombsNum > "0") {
            $stmt->close();
            $query = "UPDATE crossword_online SET '$rival'_bombs = 0 WHERE '$rival' = ?";
            $stmt = $db->prepare($query);
            $stmt->bind_param('i', $id);
            $stmt->execute();
        }
        $stmt->close();
    }
    $query = "SELECT '$rival'_bombs FROM crossword_online WHERE '$rival' = ? LIMIT 1";
    $stmt = $db->prepare($query);
    $stmt->bind_parameter('i', $id);
    if ($stmt->execute()) {
        $returnData[] = json_encode($bombsNum);
    }
}

    return $returnData;
?>