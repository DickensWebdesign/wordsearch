<?php
// game
     $db = new mysqli('localhost', 'root', 'Slayer666##666', 'db587729123');
  /* $db = new mysqli('db587729123.db.1and1.com', 'dbo587729123', 'Slayer666##666', 'db587729123'); */
if($db->connect_errno > 0) {
    die('Unable to connect to database [' . $db->connect_error . ']');
}