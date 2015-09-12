<?php

session_start();
// set global vars for game
$_SESSION['root'] = "http://www.wordsearch-game.com/";
$modulPath = $_SESSION['root'] . "js/moduls";
require_once("connection.php");
$_SESSION['mobPath'] = "";
// $smallPic = "-small";
$smallPic = "";
function setPath() {
    if ($_SESSION['mobile'] == true) {
        $_SESSION['mobPath'] = "Mobile";
        $smallPic = "";
    }
}
$path = $_SERVER['REQUEST_URI'];
if(strpos($path, "memberarea")) {
    if($_SESSION["logged_in"] !== true && !isset($_COOKIE['user_id'])) {
        header("Location: ". $_SESSION['root']);
    }
}
?>
<!DOCTYPE html>
<!--
/* ************************************************** */
// Made with love, power and energy drinks

// Title: wordsearch-online.eu - wordsearch Puzzle for everyone

// Made by FitKidsGames
// Developer: Jan Ehlbeck
// All rights reserved
// early season 2015

// This page is supported by:
 - jQuery
 - jCrop

// Enjoy the game, keep this page free of ads - donate!

/* ************************************************** */
-->
<html lang="en">
<head>
<?php
function isMobileDevice(){
    $aMobileUA = array(
        '/iphone/i' => 'iPhone',
        '/ipod/i' => 'iPod',
        '/ipad/i' => 'iPad',
        '/android/i' => 'Android',
        '/blackberry/i' => 'BlackBerry',
        '/webos/i' => 'Mobile'
    );
    foreach($aMobileUA as $sMobileKey => $sMobileOS){
        if(preg_match($sMobileKey, $_SERVER['HTTP_USER_AGENT'])){
            return true;
        }
    }
    return false;
}

function setSessionFromCookie() {
    $_COOKIE['test'] = true;
    if ($_COOKIE['test'] === true) {
        $_SESSION['user_name'] = $_COOKIE['user_name'];
        $_SESSION['user_id'] = $_COOKIE['user_id'];
        $_SESSION['mobile'] = isMobileDevice();
        return true;
    }
    return false;
}

function setNewSessionId() {
    session_regenerate_id(true);
    $_SESSION['setTime'] = time();
}

function activateLogin() {
    $_SESSION['logged_in'] = true;
}
if(!isset($_SESSION['mobile'])) {
    $_SESSION['mobile'] = isMobileDevice();
    if ($_SESSION['mobile'] == true) {

    } else {

    }
}
setPath();
// if user is coming back -> activate login
if (isset($_COOKIE['user_id']) && (!isset($_SESSION['logged_in']))) {
    setNewSessionId();
    if (setSessionFromCookie() === true) {
        activateLogin();
    }
}
// set time if not exist
if(!isset($_SESSION['setTime'])) {
    setNewSessionId();
}
// if login is active or activated by cookies
if(isset($_SESSION['logged_in']) && $_SESSION['logged_in'] == true) {
    require_once("user-data.php");
    $user = new User();
    // read all user data from db
    // todo: exclude pages
    if ($user->checkMainGameData($_SESSION['user_id'], 'crosswords')) {
        $userSettings = $user->__get('userData');
        $userMainData = $user->__get("userMainGameData");
        $userGameData = $user->__get("userGameData");
        $userGameDataMobile = $user->__get("userGameData_mobile");
        $userTop100 = $user->__get("userTop100");
        $userTop100Mobile = $user->__get("userTop100_mobile");
        $_SESSION['user_picture'] = $userSettings[0]['user_picture'];
        $timeDiffer = $_SESSION['setTime'] - time();
        if ($timeDiffer > 1200) {
            setNewSessionId();
        }
    }
} else {
    $_SESSION['user_name']  = "Guest";
    $_SESSION['user_id']    = 0;
    $_SESSION['logged_in']  = false;
}

// dev value
// $_SESSION['mobile'] = true; // activate this to work in mobile mode!
?>