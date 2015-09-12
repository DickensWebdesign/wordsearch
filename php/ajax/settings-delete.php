<?php
/* ************************************************** */
// Made with love, power and energy drinks

// Title: wordsearch-online.eu - wordsearch Puzzle for everyone


// Made by FitKidsGames
// All rights reserved
// early season 2015

/* ************************************************** */


session_start();
require_once ('../connection.php');
require_once ('../../lang/en.php');

$errorWrapStart     = '<p class="form-error">';
$errorWrapEnd       = '</p>';
$error = false;
$errorMsg = "";
$user_email = trim(htmlentities($_POST['Mail']));
$user_password = trim(htmlentities($_POST['Password']));
$user_password = md5($user_password);
$Top100 = filter_var($_POST['Top100'], FILTER_VALIDATE_BOOLEAN);
if (!filter_var($user_email, FILTER_VALIDATE_EMAIL)) {
    $error = true;
    $errorMsg = $errorWrapStart."Please insert a valid mail!".$errorWrapEnd;
}
if (empty($_POST['Password']) || strlen($_POST['Password']) < 6) {
    $error = true;
    $errorMsg = $errorWrapStart."Please insert a valid password!".$errorWrapEnd;
}
if ($error == false) {
    $saltOne = 'jj6&35ff*#';
    $saltTwo = '45Ee+##%6v';
    $pwdSplit = str_split($user_password, (strlen($user_password) / 2) + 1);
    $iterate = 40000;
    $hash = '';
    for ($i = 0; $i <= $iterate; $i++) {
        $hash = hash('sha512', $saltOne . $pwdSplit[0] . $hash . $saltTwo . $pwdSplit[1]);
    }
    $query = "SELECT `user_name`,`user_id` FROM `user` WHERE `user_email` = ? AND `user_password` = ?";
    $stmt = $db->prepare($query);
    $stmt->bind_param("ss", $user_email, $hash);
    if ($stmt->execute()) {
        if ($results = $stmt->fetch()) {
            $userExist = true;
        }
    }
    $ID = $_SESSION['user_id'];
    $stmt->close();
    /* delete account */
    if($userExist == true) {
        $query = "DELETE FROM user WHERE user_id = '$ID'";
        $stmt2 = $db->prepare($query);
        if (!$stmt2->execute()) {
            $error = true;
            $errorMsg = $errorWrapStart.$error_return[13].$errorWrapEnd;
        }
        $stmt->close();
        if($error == false) {
            $query = "DELETE FROM user_results WHERE user_id = '$ID'";
            $stmt3 = $db->prepare($query);
            if (!$stmt3->execute()) {
                $error = true;
                $errorMsg = $errorWrapStart.$error_return[13].$errorWrapEnd;
            }
            $stmt3->close();
        }
        if($error == false) {
            $query = "DELETE FROM crossword_user_made_games WHERE user_id = '$ID'";
            $stmt4 = $db->prepare($query);
            if (!$stmt4->execute()) {
                $error = true;
                $errorMsg = $errorWrapStart.$error_return[13].$errorWrapEnd;
            } 
            $stmt4->close();
        }
        if($error == false) {
            $query = "DELETE FROM crossword_user_top_100 WHERE user_id = '$ID'";
            $stmt5 = $db->prepare($query);
            if (!$stmt5->execute()) {
                $error = true;
                $errorMsg = $errorWrapStart.$error_return[13].$errorWrapEnd;
            }
            $stmt5->close();
        }
        if($error == false) {
            if ($Top100 == true) {
                $query = "DELETE FROM beginner WHERE user_id = '$ID'";
                $stmt6 = $db->prepare($query);
                if (!$stmt6->execute()) {
                    $db->rollback(); // Failed: Rollback of first transaction
                    $error = true;
                    $errorMsg = $errorWrapStart.$error_return[13].$errorWrapEnd;
                } 
                $stmt6->close();
                if($error == false) {
                    $query = "DELETE FROM easy WHERE user_id = '$ID'";
                    $stmt7 = $db->prepare($query);
                    if (!$stmt7->execute()) {
                        $db->rollback(); // Failed: Rollback of first transaction
                        $error = true;
                        $errorMsg = $errorWrapStart.$error_return[13].$errorWrapEnd;
                    }
                    $stmt7->close();
                }
                if($error == false) {
                    $query = "DELETE FROM middle WHERE user_id = '$ID'";
                    $stmt8 = $db->prepare($query);
                    if (!$stmt8->execute()) {
                        $db->rollback(); // Failed: Rollback of first transaction
                        $error = true;
                        $errorMsg = $errorWrapStart.$error_return[13].$errorWrapEnd;
                    }
                    $stmt8->close();
                }
                if($error == false) {
                    $query = "DELETE FROM hard WHERE user_id = '$ID'";
                    $stmt9 = $db->prepare($query);
                    if (!$stmt9->execute()) {
                        $db->rollback(); // Failed: Rollback of first transaction
                        $error = true;
                        $errorMsg = $errorWrapStart . $error_return[13] . $errorWrapEnd;
                    }
                    $stmt9->close();
                }
                if($error == false) {
                    $query = "DELETE FROM master WHERE user_id = '$ID'";
                    $stmt10 = $db->prepare($query);
                    if (!$stmt10->execute()) {
                        $db->rollback(); // Failed: Rollback of first transaction
                        $error = true;
                        $errorMsg = $errorWrapStart . $error_return[13]. $errorWrapEnd;
                    }
                    $stmt10->close();
                }
                if($error == true) {
                    $query = "DELETE FROM expert WHERE user_id = '$ID'";
                    $stmt11 = $db->prepare($query);
                    if (!$stmt11->execute()) {
                        $db->rollback(); // Failed: Rollback of first transaction
                        $error = true;
                        $errorMsg = $errorWrapStart .$error_return[13] . $errorWrapEnd;
                    }
                    $stmt11->close();
                }
                if($error == false) {
                    $query = "DELETE FROM godlike WHERE user_id = '$ID'";
                    $stmt12 = $db->prepare($query);
                    if (!$stmt12->execute()) {
                        $db->rollback(); // Failed: Rollback of first transaction
                        $error = true;
                        $errorMsg = $errorWrapStart .$error_return[13]. $errorWrapEnd;
                    }
                    $stmt12->close();
                }
                // MOBILE DELETE
                if( $error == false) {
                    $query = "DELETE FROM easy_mobile WHERE user_id = '$ID'";
                    $stmt13 = $db->prepare($query);
                    if (!$stmt13->execute()) {
                        $db->rollback(); // Failed: Rollback of first transaction
                        $error = true;
                        $errorMsg = $errorWrapStart . $error_return[13] . $errorWrapEnd;
                    }
                    $stmt13->close();
                }
                if( $error == false) {
                    $query = "DELETE FROM middle_mobile WHERE user_id = '$ID'";
                    $stmt14 = $db->prepare($query);
                    if (!$stmt14->execute()) {
                        $db->rollback(); // Failed: Rollback of first transaction
                        $error = true;
                        $errorMsg = $errorWrapStart . $error_return[13] . $errorWrapEnd;
                    }
                    $stmt14->close();
                } if($error == false) {
                    $query = "DELETE FROM hard_mobile WHERE user_id = '$ID'";
                    $stmt15 = $db->prepare($query);
                    if (!$stmt15->execute()) {
                        $db->rollback(); // Failed: Rollback of first transaction
                        $error = true;
                        $errorMsg = $errorWrapStart . $error_return[13] . $errorWrapEnd;
                    }
                    $stmt15->close();
                }
                if($error == false) {
                    $query = "DELETE FROM crossword_user_made_games_mobile WHERE user_id = '$ID'";
                    $stmt16 = $db->prepare($query);
                    if (!$stmt16->execute()) {
                        $error = true;
                        $errorMsg = $errorWrapStart . $error_return[13] . $errorWrapEnd;
                    }
                    $stmt16->close();
                }
                if($error == false) {
                    $query = "DELETE FROM crossword_user_top_100_mobile WHERE user_id = '$ID'";
                    $stmt17 = $db->prepare($query);
                    if (!$stmt17->execute()) {
                        $error = true;
                        $errorMsg = $errorWrapStart . $error_return[13] . $errorWrapEnd;
                    }
                    $stmt17->close();
                }
                if($error == false) {
                    $query = "DELETE FROM trophies WHERE user_id = '$ID'";
                    $stmt18 = $db->prepare($query);
                    if (!$stmt18->execute()) {
                        $error = true;
                        $errorMsg = $errorWrapStart . $error_return[13] . $errorWrapEnd;
                    }
                    $stmt18->close();
                }
            }
        } else {
            $db->rollback();
            $db->close();
        }
    } else {
        $error = true;
        $errorMsg = $errorWrapStart . $error_return[13] . $errorWrapEnd;
    }
}
$db->close();
echo '<div id="replace-settings-delete">';
if ($error == true) { ?>

        <p class="form-requirements"><strong><?php echo $form_requirements[2][0].$_SESSION['user_name']; ?>,
                <br/><?php echo $form_requirements[2][1]; ?></strong></p>
        <?php if($_SESSION['mobile'] == false) { ?>
            <p class="form-requirements"><?php echo $form_requirements[3]; ?></p>
        <?php } ?>
        <hr />
        <?php if($_SESSION['mobile'] == false) { ?>
            <p class="form-requirements"><strong><?php echo $form_requirements[4];?></strong></p>
        <?php } ?>
        <p class="form-name"><label for="mail-delete"><?php echo $form_inputs[0];?></label>
            <span class="form-input"><input type="email" id="mail-delete" required="required" placeholder="example@examp.com" maxlength="50"/></span></p>
        <p class="form-name"><label for="password-delete"><?php echo $form_inputs[1];?></label>
            <span class="form-input"><input type="password" id="password-delete" required="required" placeholder="Password" maxlength="50"/></span></p>
        <p class="form-name"><label for="del"><?php echo $form_inputs[6]; ?></label>
                <span class="form-input">
                <?php if($_SESSION['mobile'] == true) {
                    echo '<label class="switch">';
                }
                echo '<input type="checkbox" checked=checked" id="submit-delete-avatar" disabled class="keeping';
                if($_SESSION['mobile'] == true) {
                    echo ' switch-input';
                }
                echo '" />';
                if($_SESSION['mobile'] == true) {
                    echo '<span class="switch-label" data-on="On" data-off="Off"></span><span class="switch-handle"></span></label>';
                } ?>
                </span>
        </p>
        <p class="form-name"><label for="Top100-delete"><?php echo $form_inputs[7]; ?></label>
                <span class="form-input">
                       <?php if($_SESSION['mobile'] == true) {
                           echo '<label class="switch">';
                       }
                       echo '<input type="checkbox" id="Top100-delete" class="keeping ';
                       if($_SESSION['mobile'] == true) {
                           echo ' switch-input';
                       }
                       echo '" />';
                       if($_SESSION['mobile'] == true) {
                           echo '<span class="switch-label" data-on="On" data-off="Off"></span><span class="switch-handle"></span></label>';
                       } ?>
                </span>
        </p>
        <hr/>
        <?php echo $errorMsg ?>
        <p><span class="user-button" id="cancel-delete-account"><?php echo $form_button_value[7]; ?></span>
            <?php if($_SESSION['mobile'] == true) { echo '</p><p>'; } ?>
            <input type ="submit" class="user-button2" value="<?php echo $form_inputs[6]; ?>" />
        <div class="clearer"></div>
<?php
} else {
    $_SESSION['user_id'] = 0;
    $_SESSION['user_name'] = "Guest";
    $_SESSION['logged_in'] = false;
    setcookie("logged_in", "", time() + 60 * 60 * 24 * -1, '/');
    setcookie("user_id", "", time() + 60 * 60 * 24 * -1, '/');
    setcookie("user_name", "", time() + 60 * 60 * 24 * -1, '/');
?>
    <div class="success-header">
        <img src="<?php echo $_SESSION['root']; ?>img/icons/approved40.png" alt="<?php echo $form_success[5]; ?>">
        <span class="success-header-message"><?php echo $form_success[6]; ?></span>
    </div>
    <p>&nbsp;</p>
    <p class="success-message" id="success-delete"><?php echo $form_login[1]; ?></p><p>&nbsp;</p><hr />
    <p>&nbsp;</p>
    <p><input type="button" class="redirect closer user-button-single" value="<?php echo $form_login[2]; ?>"/></p>
    <div class="clearer"></div>
    <script>
        window.setTimeout(function () {
            location.reload();
        }, 5000);
        var secRed = 4;
        setInterval(function () {
            $('#replace-settings-delete').find('#success-delete').html('You will redirected in ' + secRed + ' seconds!');
            secRed--;

        }, 1000);
    </script>
<?php } ?>
</div>