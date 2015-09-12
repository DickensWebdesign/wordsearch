<?php
session_start();
require_once("../../connection.php");
require_once ('../../../lang/en.php');

$id = (int)$_SESSION["user_id_multi"];
$id = $db->real_escape_string($id);
$mobile = (boolean)$_SESSION['mobile'];
$userName = $_SESSION['user_name'];
$now = time();
$inviteId = null;
if(strlen($id) < 15) {
    $query = "SELECT invite_id FROM crossword_multiplayer_user WHERE `user_id` = ?";
    $stmt = $db->prepare($query);
    $stmt->bind_param("i", $id);
    if ($stmt->execute()) {
        $stmt->bind_result($res);
        $results = $stmt->fetch();
        if ($results) {
            $inviteId = $res;
        }
    }
    $stmt->close();
    $inviteVal = 0;
    $invite = null;
    if($inviteId !== null && $inviteId !== 0 && $inviteId !== 1) {
        $inviteVal = 1;
        $invite = '<div class="answerBox" id="' . $inviteId . '-answer"><p>'.$invite[0].'</p><hr /><p>Player '. $inviteId.$invite[1]. '</p><hr /><input type="button" class="user-button-single answer-call" value="'.$faq[10].'" /><p>&nbsp;</p><input type="button" class="user-button-single answer-call" value="'.$form_button_value[14].'" /></div>';
    }

    echo  $invite;
    $time = time()-20;
    $query = "DELETE FROM crossword_multiplayer_user WHERE time_action <= '$time'";
    $result = $db->query($query);

    $dataGuest = [];
    $query = "SELECT user_id FROM crossword_multiplayer_user WHERE NOT user_id = '$id' AND mobile = '$mobile' AND guest = '1'";
    $userCount = 0;
    $ids = Array(0 => "1", 1 => "2", 2 => "3");
    echo " | ";
    if ($result = $db->query($query)) {
        while ($row = $result->fetch_object()) {
            $ids[] = $row->user_id;
        }
        $result->free();
    }
    echo  json_encode($ids);
    echo " | ";
    $query = "SELECT user.user_id, user.user_name, user.user_picture FROM user INNER JOIN crossword_multiplayer_user ON user.user_id = crossword_multiplayer_user.user_id AND crossword_multiplayer_user.mobile = '$mobile' AND crossword_multiplayer_user.guest = '0' AND NOT crossword_multiplayer_user.user_id = '$id'";
    $userCount = 0;
    $data = null;
    if ($result = $db->query($query)) {
        while ($row = $result->fetch_assoc()) {
            $data[$userCount] = $row;
            $userCount++;
        }
        $result->free();
    }
    echo  json_encode($data);
    $query = "UPDATE crossword_multiplayer_user SET time_action = $now, invite_id = $inviteVal  WHERE user_id = $id";
    $result = $db->query($query);
}
?>