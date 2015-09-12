<?php
/* ************************************************** */
// Made with love, power and energy drinks

// DevTitle: wordsearch-online.eu - wordsearch Puzzle for everyone


// Made by FitKidsGames
// All rights reserved
// early season 2015

/* ************************************************** */

// this is the called ajax file

session_start();

$mobilePath = "";
if($_SESSION['mobile'] == true) {
    $mobilePath = "_mobile";
}
require_once '../connection.php';
require_once '../../lang/en.php';
$levels = [
    "beginner"  => "easy",
    "easy"      => "middle",
    "middle"    => "hard"
];
$newTime = $_POST['time']; // value from ajax
$mobile = (boolean)$_SESSION['mobile'];
$newTime = $db->real_escape_string($newTime);
$level = strtolower($_SESSION['level']);
$level = $db->real_escape_string($level);
if($_SESSION['mobile'] == true) {
    $level = $levels[$level];
}
$error = $_POST['mistakes'];
$ms = substr($newTime, -3);
$sec = substr($newTime, 0, strlen($_POST['time']) - 3);
$time = gmdate("i:s", $sec);


// this is the part how executed when logged in
// update the db after game
if($_SESSION['logged_in']) {
    $query = "
        UPDATE user_results
        SET user_complete_games = user_complete_games +1
        WHERE user_id = ?";
    $update = $db->prepare($query);
    $update->bind_param("i", $_SESSION['user_id']);
    $update->execute();
    $update->close();
    $levelComplete = $level."_complete";
    $levelStarted = $level."_started";
    $timeEnd  = $level."_last_game";
    $now = date("Y-m-d H:i:s");
    // i guess in query something is wrong - execution dies then and nothing returns - > empty frame
    $query2 = "UPDATE crossword_user_made_games$mobilePath SET $levelComplete = $levelComplete +1, user_completed_games = user_completed_games +1, $timeEnd = '$now' WHERE user_id = ?";
    $update2 = $db->prepare($query2);
    $update2->bind_param("i", $_SESSION['user_id']);
    $update2->execute();
    $update2->close();
    // insert in PERSONAL HIGHSCORE
    // mobile
    $query3 = " INSERT INTO crossword_user_top_100$mobilePath (user_id, user_time, user_error, user_level, date_of_game) VALUES (?,?,?,?,?)";
    $update3 = $db->prepare($query3);
    $update3->bind_param("sisss", $_SESSION['user_id'], $newTime, $error, $level, $now);
    $update3->execute();
    $update3->close();
    $query = "SELECT $levelComplete, $levelStarted, user_completed_games, user_started_games FROM crossword_user_made_games$mobilePath WHERE `user_id` = ?";
    $stmt = $db->prepare($query);
    $stmt->bind_param("i", $_SESSION['user_id']);
    if ($stmt->execute()) {
        $stmt->bind_result($thisLevelComplete, $thisLevelStarted, $allGamesComplete, $allGamesStarted);
        $results = $stmt->fetch();
        if ($results) {
            $solvedThisLevel = $thisLevelComplete;
            $startedThisLevel = $thisLevelStarted;
            $allGamesComp = $allGamesComplete;
            $allGamesStart = $allGamesStarted;
            $noData = false;
        } else {
            $noData = true;
            $noDataMsg = $error_return[4];
        }
    }
    $stmt->close();
}
// here if logged in ends -> other seems to return correct (as guest ) means in following code nothing wrong ;)
?>
<div class="bwc-modal-frame final-result-frame">
    <?php
    if($_SESSION['mobile'] === true) {
        $closeImg = "icon-x.png";
    } else {
        $closeImg = "close.png";
    }
    $wrapperStart = "";
    $wrapperEnd = "";
    if ($_SESSION['mobile'] == false) {
        $wrapperStart = '<div class="center">';
        $wrapperEnd = '</div>';
    }
    echo $wrapperStart . '<img src="'. $_SESSION['root'] .'img/icons/' . $closeImg . '" class="front close-game close-img" alt="Close" title="'.$form_close[0].'" />' . $wrapperEnd;
    echo '<div class="bwc-modal-content"><a id="final-result"></a>';
         if($_SESSION['mobile'] == false) { ?>
            <p class="bwc-modal-headtext"><?php echo $form_success[3]; ?></p>
        <?php } else { ?>
            <p class="bwc-modal-headtext"><?php echo $form_success[4]; ?></p>
        <?php } ?>
            <?php
            // return of the table etc.....
            echo '<p class="game-details underline"><strong>'.$tbl_fields[0].'</strong><span>';
            echo '<p class="game-details">'.$tbl_fields[1].'<span>' . $_SESSION['user_name'] . '</span></p>';
                if($_SESSION['user_name'] == "Guest") {
                    echo '<p class="game-details">'.$tbl_fields[2].'</p>';
                }
                echo '</p>';
                echo '<p class="game-details">'.$tbl_fields[3].'<span>'.ucfirst($level).'</span></p>';
                echo '<p class="game-details">'.$tbl_fields[4].'<span>'.$time.'</span>';
                echo '<p class="game-details">'.$tbl_fields[5].'<span>'.$error.'</span>';
                if($_SESSION['logged_in'] == true) {
                    echo '<p class="game-details underline"><strong>'.$tbl_fields[6].' ('.$level.'):</strong></p>
                    <p class="game-details">'.$tbl_fields[7][0].' <span>'.$solvedThisLevel;
                    echo " | ";
                    echo $startedThisLevel;
                    echo '</span></p>';
                    echo '<p class="game-details"><strong>'.$tbl_fields[8].'</strong><span>';
                    echo $startedThisLevel;
                    echo '</span></p>';
                    echo '<hr /><p class="game-details underline"><strong>'.$tbl_fields[8].'</strong></p>';
                    echo '<p class="game-details">'.$tbl_fields[7][0].' <span>' . $allGamesComp . ' | ' . $allGamesStart . '</span></p>';
                    echo '<p class="game-details">'.$tbl_fields[7][1].' <span>' . $allGamesStart . '</span></p>';
                    if($noData === true) {
                        echo '<p class="red-color">' . $noDataMsg  . '</p>';
                    }
                }
            ?>
            <hr />
            <?php
            $sql = "SELECT `time` FROM ".$level.$mobilePath." ORDER BY time ASC LIMIT 100";
            $ranking = 1;
            $inside = false;
            $stmt = $db->prepare($sql);
            if($stmt->execute()) {
                $stmt->bind_result($timeRes);
                    while ($stmt->fetch()) {
                        // if time is in top 100 ranking
                        if ($newTime < $timeRes) {
                            $inside = true;
                            break;
                        }
                        $ranking++;
                    }
            }
            mysqli_close($db);
            echo '<p class="game-details">'. $tbl_fields[8];
    if ($inside == true) {
        echo '<span class="green-color"><strong>'.$ranking.'!</strong>';
    } else {
        echo '<span>'. $tbl_fields[9];
    }
    ?>
    </span></p><hr />
    <form name="lister" id="lister">
        <input type="hidden" id="time" value="<?php echo $newTime; ?>"/>
        <p>&nbsp;</p>
        <?php if($_SESSION['mobile'] == false) { ?>
            <p><input type="button" class="front close-game user-button" value="<?php echo $form_button_value[11]; ?>" />
            <?php if ($inside == true) {
                echo '<input type="button" class="user-button2" id="list-me" value="'.$form_button_value[13].'" />';
            } ?>
            <input type="button" class="restart close-game user-button3" value="<?php echo $form_button_value[12]; ?>" /></p>
        <?php } else { ?>
                <p><input type="button" class="front close-game user-button" value="<?php echo $form_button_value[11]; ?>" /></p><p>&nbsp;</p>
                <?php if ($inside == true) {
                    echo ' <p><input type="button" class="user-button2" id="list-me" value="'.$form_button_value[13].'"/></p><p>&nbsp;</p>';
                } ?>
                <p><input type="button" class="restart close-game user-button3" value="<?php echo $form_button_value[11]; ?>" /></p>
        <?php } ?>
        <div class="clearer"></div>
        <div class="loading-info">
            <div class="loading">
                <img src='<?php echo $_SESSION['root']; ?>img/icons/loading.gif' alt='please wait while loading' title='<?php echo $form_loading[1]; ?>' />
                <p><?php echo $form_loading[1]; ?></p>
            </div>
        </div>
    </form>
</div>
<?php
$_SESSION['ranking'] = $ranking;
$_SESSION['time'] = $newTime;
?>