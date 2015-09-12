<?php
session_start();
require_once ("../../connection.php");
require_once ('../../../lang/en.php');

$error = false;
$errorWrapStart     = '<p class="form-error">';
$errorWrapEnd       = '</p>';
$caller = $_SESSION['user_id_multi'];
$caller = $db->real_escape_string($caller);
$member = $_POST['member'];
$member = $db->real_escape_string($member);
$reply = $_POST['id'];
$reply = $db->real_escape_string($reply);
$_SESSION["replier"] = $reply;
$num  = "1";
$gameId = sha1(mt_rand(10000,99999).time());
($member === "false") ? $name = 'Guest #' . $reply : $name = $member;
$callerVal = $inviteVal = false;
echo '<div id="replace-invitation">';
if(strlen($caller) < 15) {
    $query = "SELECT invite_id FROM crossword_multiplayer_user WHERE `user_id` = ?";
    $stmt = $db->prepare($query);
    $stmt->bind_param("i", $reply);
    if ($stmt->execute()) {
        $stmt->bind_result($res);
        $results = $stmt->fetch();
        if ($results) {
            $inviteVal = $res;
        }
    }
    $stmt->close();
    $query = "SELECT invite_id FROM crossword_multiplayer_user WHERE `user_id` = ?";
    $stmt = $db->prepare($query);
    $stmt->bind_param("i", $caller);
    if ($stmt->execute()) {
        $stmt->bind_result($res);
        $results = $stmt->fetch();
        if ($results) {
            $callerVal = $res;
        }
    }
    $stmt->close();
    if($inviteVal !== 0) {
        echo '<p class="red-color">'.$invite[2] . $name .$invite[3]. ' <br/>';
        echo ''.$invite[4].'</p><hr/>';
        echo '<p>'.$invite[5].'</p>';
    } elseif($callerVal !== 0) {
        echo 'triggerCheckUserState';
    } else if($inviteVal === 0 && $callerVal === 0) {
            $query = "UPDATE crossword_multiplayer_user SET invite_id = '$caller' WHERE user_id = '$reply'";
            if (!$db->query($query)) {
                $error = true;
            };
        $query = "DELETE FROM `crossword_multiplayer` WHERE user_id = '$caller'";
        $db->query($query);
        $query = "INSERT INTO `crossword_multiplayer` (`rival_1`, `rival_2`, `game_id`) VALUES ('$caller', '$reply', '$gameId')";
        $db->query($query);
        if ($error == true) {
            echo $errorWrapStart . $invite[6] . $errorWrapEnd;
        } else { ?>
            <h2 class="green-color aligner"><?php echo $invite[7]; ?></h2><hr/>
            <p class="green-color aligner"><?php echo $invite[8]; ?><?php echo $name; ?>!<br/><?php echo $invite[9]; ?></p><hr/>
            <div class="loading-info-multi">
                <div class="loading-multi">
                    <img src="<?php echo $_SESSION['root']; ?>img/icons/loading.gif"
                         alt='<?php echo $form_loading[0]; ?>' title='<?php echo $form_loading[1]; ?>'/>
                    <p><?php echo $form_loading[1]; ?></p>
                </div>
            </div>
            <p class="aligner"><?php echo $invite[10].$name; ?></p>
        <?php
        }
    }
}
echo '</div>';
?>