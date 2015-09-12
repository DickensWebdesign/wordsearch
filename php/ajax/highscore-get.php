<?php
/* ************************************************** */
// Made with love, power and energy drinks

// DevTitle: wordsearch-online.eu - wordsearch Puzzle for everyone


// Made by FitKidsGames
// All rights reserved
// early season 2015

/* ************************************************** */


session_start();
require_once '../connection.php';
require_once('../../lang/en.php');
if($_SESSION['mobile'] == false) {
    $levels = [
        0 => "beginner",
        1 => "easy",
        2 => "middle",
        3 => "hard",
        4 => "expert",
        5 => "master",
        6 => "godlike"
    ];
    $levelTb = $levels;
} else {
    $levels = [
        0 => "easy",
        1 => "middle",
        2 => "hard"
    ];
    $levelTb = [
        0 => "easy_mobile",
        1 => "middle_mobile",
        2 => "hard_mobile"
    ];
}
echo "<div class='highscore-frame' id='highscore-frame-users'>";
if($_SESSION['mobile'] == false) { ?>
    <div class='center'><img src='<?php echo $_SESSION['root']; ?>img/icons/close.png' class='close-img' id='close-highscore' alt='Close' title='Close Highscore' /></div>
    <img src='<?php echo $_SESSION['root']; ?>img/icons/banderole-hs.png' class='banderole-hs' alt='' title='Highscore Banderole' />
    <div class='highscore-headline' id="highscore-headline-users"><?php echo $tbl_highscore[0]; ?></div>
<?php } else { ?>
    <img src='<?php echo $_SESSION['root']; ?>img/icons/icon-x.png' class='close-img' id='close-highscore' alt='Close' title='Close Highscore' />
    <p class="highscore-headtext"><?php echo $tbl_highscore[1]; ?></p>
    <div class='highscore-headline' id="highscore-headline-users"><?php echo $tbl_highscore[2]; ?></div>
<?php } ?>
    <div class='highscore-wrapper'><table class='highscore-table-header'><tr><td class='highscore-td-first'><?php echo $tbl_highscore[3]; ?></td><td class='highscore-td'><?php echo $tbl_highscore[1]; ?></td><td class='highscore-td'><?php echo $tbl_highscore[4]; ?></td></tr></table><hr />
    <div class='tb-frame'>
<?php
$tblId = 0;
foreach($levelTb as $key => $levelVal) {
    $sql = "SELECT * FROM $levelVal ORDER BY time ASC LIMIT 100 ";
    if (!$times = $db->query($sql)) {
        die('There was an error running the query [' . $db->error . ']');
    } else {
        while ($row = $times->fetch_assoc()) {
            $highscores[] = $row;
        }
    }
    $index = 1;
    $tenth = 1;
    echo "<table class='tbl' id='tbl-" . $tblId ."'><tbody>";
    foreach($highscores as $key2 => $value) {
echo '<tr>';
echo "<td class='highscore-td-first'";
if (($index % 10) == 0) {
    echo " id='hs-index" . $tenth . "' ";
    $tenth++;
}
echo ">" . $index . "</td>";

$ms = substr($value['time'], -3);
$sec = substr($value['time'], 0, strlen($value['time']) - 3);
$time = gmdate("H:i:s", $sec);
echo "<td class='highscore-td'>" . $time . "." . $ms . "</td>"; ?>
        <td class='highscore'><?php
            $query = "SELECT user_picture FROM user WHERE user_id = ?";
            $stmt = $db->prepare($query);
            $stmt->bind_param("i", $value["user_id"]);
            if ($stmt->execute()) {
                $stmt->bind_result($picture);
                if ($result = $stmt->fetch()) {
                    $pic = $picture;
                    if ($pic == 1) {
                        echo "<img class='user-picture-mini' src='img/user/profile/" . $value['name'] . "-small.jpg' />";
                    } else {
                        echo "<img class='user-picture-mini' src='img/user/profile/guest-small.jpg' />";
                    }
                    $stmt->close();
                } else {
                    echo "<img class='user-picture-mini' src='img/user/profile/guest-small.jpg' />";
                }
                echo '<span class="td-username">' . $value['name'] . '</span></td>';
                echo '</tr>';
                $index++;
            }
            }
    echo "</tbody></table>";
    $tblId++;
    $highscores = [];
}
$db->close();
?>
</div><hr />
    <div id="highscore-menu">
        <?php if($_SESSION['mobile'] == false) { ?>
<table><tbody><tr>
            <td><span class="back highscore-button user-button"><?php echo $tbl_highscore_button[0]; ?></span></td>
            <td><span class="up highscore-button user-button"><?php echo $tbl_highscore_button[1]; ?></span></td>
            <td><span class="down highscore-button user-button"><?php echo $tbl_highscore_button[2]; ?></span></td>
            <td><span class="next highscore-button user-button"><?php echo $tbl_highscore_button[3]; ?></span></td>
        </tr></tbody></table>
    <?php } else { ?>
            <div class="left">
                <p><span class="back highscore-button user-button2" id="highscore-back"><?php echo $tbl_highscore_button[0]; ?></span></p>
                <p><span class="next highscore-button user-button2" id="highscore-next"><?php echo $tbl_highscore_button[3]; ?></span></p>
            </div>
            <div class="right">
                <p><span class="up highscore-button user-button2" id="highscore-up"><?php echo $tbl_highscore_button[1]; ?></span></p>
                <p><span class="down highscore-button user-button2" id="highscore-down"><?php echo $tbl_highscore_button[2]; ?></span></p>
            </div>
<?php } ?>
</div></div>
