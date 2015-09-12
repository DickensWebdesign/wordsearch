<?php
session_start();
$id = $_SESSION['user_id_multi'];
$rival = htmlentities($_SESSION['rival']);
$rival = (int)$rival;
$words = htmlentities($_POST['words']);
$words = (int)$words;
require_once("../../connection.php");
$query = "UPDATE crossword_multiplayer SET '$rival'_words = $words WHERE '$rival' = '$id";
$result = $db->query($query);
?>