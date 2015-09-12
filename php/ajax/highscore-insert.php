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
require_once ('../../lang/en.php');
$newTime 	= $_POST['time'];
$newTime = $db->real_escape_string($newTime);
$playername = $_SESSION['user_name'];
$playername = $db->real_escape_string($playername);
$level = strtolower($_SESSION['level']);
$level = $db->real_escape_string($level);
$levels = [
    "beginner"  => "easy_mobile",
    "easy"      => "middle_mobile",
    "middle"    => "hard_mobile"
];
$levelViews = [
    "Beginner"  => "easy",
    "Easy"      => "middle",
    "Middle"    => "hard"
];
if($_SESSION['mobile'] == true) {
    $level = $levels[$level];
    $levelView = $levelViews[$_SESSION['level']];
} else {
    $levelView = ucfirst($level);
}
$nTms = substr($newTime, -3);
$nTsec = substr($newTime, 0 ,strlen($newTime)-3);
$nTtime = gmdate("i:s", $nTsec).'.'.$nTms;
$sql = "INSERT INTO ".$level." (`time`, `name`, `user_id`)  
		VALUES ('".$newTime."', '".$playername."', '".$_SESSION['user_id']."')";
if(!$times = $db->query($sql)) {
    die('There was an error running the query [' . $db->error . ']');
}
if ($_SESSION['ranking'] > 5) {
	$limitStart = $_SESSION['ranking']-5;
	$sql = "SELECT * FROM ".$level." ORDER BY `time` ASC LIMIT ".$limitStart." , 10";
} elseif($_SESSION['ranking'] > 90) {
	$limitStart = 90;
	$sql = "SELECT * FROM ".$level." ORDER BY `time` DESC LIMIT ".$limitStart." , 10";
} else {
	$sql = "SELECT * FROM " .$level. " ORDER BY `time` ASC LIMIT 10";
}
if(!$times = $db->query($sql)) {
    die('There was an error running the query [' . $db->error . ']');
} ?>

<div class="bwc-modal-frame highscore-frame final-entry-frame">
<?php
($_SESSION['mobile'] === true) ? $closeImg = "icon-x.png" : $closeImg = "close.png";
$wrapperStart = "";
$wrapperEnd = "";
if ($_SESSION['mobile'] == false) {
    $wrapperStart = '<div class="center">';
    $wrapperEnd = '</div>';
}
echo $wrapperStart . '<img src="'.$_SESSION['root'].'img/icons/' . $closeImg . '" class="front close-game close-img" alt="Close highscore entry" title="' .$form_close[0] . ' final results" />' . $wrapperEnd;
echo '<div class="bwc-modal-content"><a id="final-entry"></a>';
if($_SESSION['mobile'] == false) { ?>
    <img src='<?php echo $_SESSION['root']; ?>img/icons/banderole-hs.png' class='banderole-hs' alt='' title='<?php echo $tbl_highscore[5]; ?>' />
    <div class='highscore-headline'><?php echo $tbl_fields[3]; ?><?php echo $levelView ?></div>
<?php } else { ?>
        <p class="highscore-headtext"><?php echo $tbl_highscore[1]; ?></p>
<?php } ?>
        <div class='highscore-wrapper'><table class='highscore-table-header'><tr><td class='highscore-td-first-entry'><?php echo $tbl_highscore[3]; ?></td><td class='highscore-td'><?php echo $tbl_highscore[3]; ?></td><td class='highscore_td'><?php echo $tbl_highscore[4]; ?></td></tr></table><hr />
        <div class='tb-frame-entry'><table class="tbl"><tbody>
        <?php if($_SESSION['ranking'] < 5) {
	        $index = 1;
        } else {
	        $index = $_SESSION['ranking']-4;
        }
        while($row = $times->fetch_assoc()) {
            $ms = substr($row['time'], -3);
            $sec = substr($row['time'], 0 ,strlen($row['time'])-3);
            $time = gmdate("H:i:s", $sec);
            echo "<tr";
            if ($index == $_SESSION['ranking']) {
                echo ' class="green" ';
            }
            echo "><td class='highscore-td-first-entry'>".$index."</td>";
            echo "<td class='highscore-td'>".$time.".".$ms."</td>";
            echo "<td class='highscore-td'>".$row['name']."</td></tr>";
            $index++;
        } ?>
        </tbody></table></div><hr />
        <p><?php echo $tbl_highscore[6] ." ".  $_SESSION['ranking']; ?></p>
        <p> <?php echo $tbl_highscore[7] . $nTtime ?></p><hr /><p>&nbsp;</p>
        <p><input type="button" class="front close-game user-button-single" value="<?php echo $tbl_highscore_button[4]; ?>" /></p>
    </div>
    <input type="hidden" class="final-entry opener" />
</div>
</div>