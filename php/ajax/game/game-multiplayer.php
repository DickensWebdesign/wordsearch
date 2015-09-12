<?php
/* ************************************************** */
// Made with love, power and energy drinks

// DevTitle: wordsearch-online.eu - wordsearch Puzzle for everyone


// Made by FitKidsGames
// All rights reserved
// early season 2015

/* ************************************************** */


session_start();
require_once '../../connection.php';

$words = array(); 			// the words to use - => filled by --> create-words-for-game()
$columns = ""; 				// coming from POST values - have a value after start
$rows = ""; 				// coming from POST values - have a value after start
$numOfWords = ""; 			// number of real words - given by POST - have a value after start
$usedFields = array(); 		// using fields by real words ////++++ false or true
$fields = array(); 			// array columns x rows with letter as value <- used for output 
$wordNum = array(); 		// Number of Words
$wordsInMenu = array();		// Array of Words for <-used for menu output
$posStart = "";				// value Start -> set point of start to set words
$posEnd = "";				// value End -> set point of end to set words
$posX = "";					// Position X -> constant if word is vertical else increased or descented
$posY = "";					// Position Y -> constant if word is horizontal else increased or descented  
$direction = "";			// direction => to switch between horizontal/vertical/diagonal 
$wordsInMenu = array();		// Words for menu in array -> value is the full string
$directions = array("horizontal","vertical","horizontalminus","verticalminus","diagonalTobr","diagonalTotl","diagonalTotr","diagonalTobl");

echo set_gamesettings();

function output() {
    global $rows;
    global $columns;
    global $usedFields;
    global $wordNum;
    global $fields;
    global $wordsInMenu;
    global $db;


    $content = "<div class='rel'><div class='game-wrapper'><div class='game-floater'><div id='mp-game-info'></div>";

    if ($_SESSION['mobile'] == false) {
        $content .= "<div class='center'><img src = '../img/icons/close-glow.png' class='closer' id = 'game-close' alt = 'Close' title = 'Do you wanna cancel this game? You will loose this game! ' /></div > ";
    }
    $content .= "<div class='game-header'><div>";
    if ($_SESSION['mobile'] == false) {
        $content .= "<p><span class='user-name'>Player: " . $_SESSION['user_name'] . "</span><span class='user-level'>Level: " . $_SESSION['level'] . "</span></p>";
    } else {
        $content .= "<p><span class='game-menu content-menu2'>Menu</span></p><span class='floater-left'>Time:</span><span class='showTime-inner'></span>";
        $content .= "<span class='ingame-details'><span id='errorbox'>Mistakes: 0</span></div>";
        $content .= "<div id='game-right'><div class='wordbox'>";
        foreach ($wordsInMenu as $key => $val) {
            if ($val != "") {
                $content .= "<p class='wordlist' id='" . $key . "'>" . $val . "</p>";
            }
        }
        $content .= "<div class='currentWordBox'></div></div></div>";
    }
    $content .= "</div></div>";
    if ($_SESSION['mobile'] == false) {
        $content .= "<hr />";
    }
    $content .= "<div id='gf-main'>";
    if ($_SESSION['mobile'] == false) {
        $content .= "<div class='showTime-inner'></div><div id='yourTime'>";
        $content .= "<img src='<?php echo $_SESSION['root']; ?>img/icons/stop-watch-icon.png' title='Your time:' alt='Your time:'/>";
        $content .= "<div id='errorbox'>Mistakes: 0</div><hr/><div class='highscore-ingame-box'><p>Your Highscore</p>";
        /* $level = strtolower($_SESSION['level']);
        if ($_SESSION['user_id'] != 0) {
            $val1 = $_SESSION['user_id'];
            $val2 = $_SESSION['user-name'];
            if ($db->connect_errno > 0) {
                die('Unable to connect to database [' . $db->connect-error . ']');
            }
            $query = "SELECT `time`, 'user_id' FROM " . $level . " WHERE `user_id` = ? AND `name` = ? ORDER BY `time`";
            $stmt = $db->prepare($query);
            $in = false;
            $stmt->bind_param("ss", $val1, $val2);

            if ($stmt->execute()) {
                $stmt->bind_result($userTime, $userId);
                $num = 1;
                while ($stmt->fetch() && $num <= 3) {
                    $in = true;
                    $ms = substr($userTime, -3);
                    $sec = substr($userTime, 0, strlen($row['time']) - 3);
                    $time = gmdate("i:s", $sec);
                    echo '<p>' . $time . "." . $ms . '</p>';

                    $num++;
                }
                if ($in == false) {
                    echo '<p>We have still no highscore ranking of you.</p>';
                }
            }
        } else {
            echo '<p>Please register for personal highscore.</p>';
        }
*/
        $content .= "</div></div><div id='gamefield'>";
    }
    $content .= "<table>";
    for ($r = 0; $r < $rows; $r++) {
        $content .= "<tr";
        if ($_SESSION['level'] == 'Expert' || $_SESSION['level'] == 'Master' || $_SESSION['level'] == 'Godlike') {
            $content .= " class='tr-hugegame'";
        } else {
            $content .= " class='tr-smallgame'";
        }
        $content .= ">";
        for ($c = 0; $c < $columns; $c++) {
            $content .= "<td class='white'";
            if ($usedFields[$r][$c] == true) {
                $content .= "data-id='" . $wordNum[$r][$c] . "'";
            } else {
                $content .= "data-id='9999'";
            }
            $content .= "><span class='letter'>" . $fields[$r][$c] . "</span></td>\r";
        }
        $content .= "</tr>\r";
    }
    $content .= "</table></div>";

    if ($_SESSION['mobile'] == false) {
        asort($wordsInMenu);
        $content .= "<div id='game-right'><H2 class='menuHeadline wordheader'>WORDS</H2><hr /><div class='wordbox'>";
        foreach ($wordsInMenu as $key => $val) {
            if ($val != "") {
                $content .= "<p class='wordlist' id='" . $key . "'>" . $val . "</p>";
            }
        }
        $content .= "<div class='currentWordBox'></div></div>";
        if ($_SESSION['level'] == 'Expert' || $_SESSION['level'] == 'Master' || $_SESSION['level'] == 'Godlike') {
            $content .= "</div></div>";
        }
        $content .= "</div></div></div></div>";
        insert_into_db($content);
    }
}

function insert_into_db($content) {
    global $db;
    if($content) {
        $id = $_SESSION['user_id_multi'];
        $query = "UPDATE crossword_multiplayer SET code_game  = ? WHERE rival_2 = ?";
        $stmt = $db->prepare($query);
        $stmt->bind_param("si", $content, $id);
        if(!$stmt->execute()) {
            echo '<p class="color-red">Sorry, we could not create a game for you! Please close!</p>';
        }
        $stmt->close();
    }
    $query = "SELECT `game_id` FROM `crossword_multiplayer` WHERE `rival_2` = ?";
    $stmt = $db->prepare($query);
    $stmt->bind_param("i", $id);
    if($stmt->execute()) {
        $stmt->bind_result($gameIds);
        if ($result = $stmt->fetch()) {
            $gameId = $gameIds;
            $stmt->close();
            echo $gameId;
        } else  {
            $stmt->close();
            echo '<p class="color-red">Sorry, we could not create a game for you! Please close!</p>';
        }
    }
}

function set_gamesettings() {
	global $columns;
	global $rows;
	global $numOfWords;

    if($_SESSION['mobile'] == false) {
        $columns = 15;
        $rows = 15;
        $numOfWords = 18;
        $_SESSION['level'] = "Hard";
    } else {
        $columns = 13;
        $rows = 13;
        $numOfWords = 16;
        $_SESSION['level'] = "Middle";
    }
	start_check();
}
function start_check() {
	global $direction;
	global $words;
	global $usedFields; // using fields by real words ////++++ false or true
	global $fields; // array columns x rows - contains real values
	global $wordNum;
	global $columns;
	global $numOfWords;
	global $rows;
	global $wordsInMenu;
	$error = 0;
	$setable = false;
	$usedFields = array_fill(0, $rows, array_fill(0, $columns, false));
	create_field_array($columns, $rows);
	create_words_for_game($numOfWords, $rows);
		
	for ($word = 0; $word < $numOfWords; $word++) // run through all words
	{
		// checken ob kreuzen möglich ist....
		if($word % 4 == 0)
		{
			$setable = check_horizontal($word); /* each fourth word starting with check horizontal */
		} 
		// .....wenn kreuzen nicht möglich ist, probieren von leeren Feldern
		if($setable == false)
		{
			$setable = try_position($word); // checking if setable
		}
		if($setable == false && $error < 299) // while not setable, try other positions
		{
			$error++;	
			$word--;
		}
		if ($error == 299) 
		{
			$words = array(); // the words to use - coming from $strings
			$usedFields = array();
			$fields = array(); // array columns x rows
			$posStart = "";
			$posEnd = "";
			$posX = "";
			$posY = "";
			$wordNum = array();
			$wordsInMenu = array();
			start_check();
		}
		if($setable == true) {
			set_word($rows, $columns, $word);
			$setable = false;	
			$error = 0;
		}	 
	}
    /* if($_SESSION['logged_in'] == true) {
        $table = "crossword_user_made_games";
        $levels = [
            "Beginner" => "beginner",
            "Easy" => "easy",
            "Middle" => "middle",
            "Hard" => "hard",
            "Master" => "master",
            "Expert" => "expert",
            "Godlike" => "godlike"
        ];
        if ($_SESSION['mobile'] == true) {
            $table = "crossword_user_made_games_mobile";
            $levels = [
                "Beginner" => "easy",
                "Easy" => "middle",
                "Middle" => "hard"
            ];
        }
        // game is created - if logged in we have to increase some values in user rules
        /*
        $query = "
        UPDATE user-results
        SET user-all-games = user-all-games +1, user-started-games = user-started-games +1
        WHERE user_id = ?";
        $update = $db->prepare($query);
        $update->bind_param("i", $_SESSION['user_id']);
        $update->execute();
        $update->close();
        $level = $levels[$_SESSION['level']];
        $levelStart = $level . "-started";
        $timeStart = $level . "-last-game";
        $now = date("Y-m-d H:i:s");
        $query2 = "
        UPDATE $table
        SET $levelStart = $levelStart +1, user-started-games = user-started-games +1 , user-all-games = user-all-games +1, $timeStart = '$now'
        WHERE user_id = ?";
        $update2 = $db->prepare($query2);
        $update2->bind_param("i", $_SESSION['user_id']);
        $update2->execute();
        $db->close();
    } */
    output();
}

// creating a random letter / called by create_field_array()
function create_Ran_Letter() {
$randomVal = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
$randomString = '';
$randomString .= $randomVal[rand(0, strlen($randomVal) - 1)];
return $randomString;
}

function create_field_array($columns, $rows) {
	global $fields;
	for($row = 0; $row<$rows; $row++) {
		for ($col = 0; $col<$columns; $col++) {
			$value = create_Ran_Letter(); 
			$fields[$row][$col] = $value;
		}
	}
}
/* CREATES PHP ARRAYS FOR OUTPUT */
function create_words_for_game($numOfWords, $rows) 
{
	global $wordsInMenu;
	global $words;
	$lines = array();
	$newWord ="";
	$dic = '../../../dictionary/dictionary.txt';
	//load dictionary 
	if (file_exists($dic)) {
	$lines = file($dic);
	}
	else
	{
		$error = "";
		exit;
	}
	for ($wordNum=0; $wordNum < $numOfWords; $wordNum++)
	{	
		$newWord = "";
		$strNum = rand(0, count($lines)-1);	
		// numbers of rows < wordlength 
		$curWord = trim($lines[$strNum]);
		$curWord = str_replace ("-", "", $curWord);
		$curWord = strtoupper($curWord);
		$strlength = strlen($curWord);
		$maxLength = $rows-3;
		if ($maxLength <= $strlength)
		{  
			$wordNum--;	
		}		
		else
		{
		// if word smaller as row save in letters
			for($letterNum = 0; $letterNum < $strlength; $letterNum++)
			{		
				if ($wordNum < $numOfWords)
				{
					// save words from dictionary in Array for game => array $wordsForGame
					// value is a letter
					$words[$wordNum][$letterNum] = substr($curWord, $letterNum, 1); 
				} 
				else 
				{	
					$wordNum--;
				}
			} 
			foreach ($words[$wordNum] as $key => $value)
			{
				$newWord .= $value;
			}
			if (in_array($newWord, $wordsInMenu))
			{
				$wordNum--;
			}
			else
			{	
				// value is a full Word 
				$wordsInMenu[] = $newWord;
				
			}
		// for loop ends
		}
	}
uasort($wordsInMenu, "cmp");
}
function cmp($a, $b)
{
    if (strlen($a) == strlen($b)) {
        return 0;
    }
    return (strlen($a) < strlen($b)) ? -1 : 1;
}
// function to check if the word is CROSSABLE / function calling itselfs / check_horizontal calls => check_horizontal-minus calls => check_vertical etc... 
//initialized by startcheck()  
function check_horizontal($word) 
{
	global $direction;
	global $directions;
	global $words;
	global $posX;
	global $posY;
	global $posStart;
	global $posEnd;
	global $rows;
	global $usedFields;
	global $fields;
	$impossible = NULL;
	$numOfLetters = count($words[$word]);
	
	for ($letterPos=0; $letterPos<$numOfLetters; $letterPos++) {
		foreach ($fields as $key => $value) {
			foreach ($value as $key2 => $value2) {
				if ($value2 == $words[$word][$letterPos] && $usedFields[$key][$key2] == true && $key2 >= $letterPos && $key2+($numOfLetters-$letterPos) < $rows) {
					$posEnd = $key2-$letterPos+$numOfLetters;
					$letter = 0;
					for ($posX = $key2-$letterPos; $posX<$posEnd; $posX++) {		
						if($usedFields[$key][$posX] == false || ($fields[$key][$posX] == $words[$word][$letter] && $usedFields[$key][$posX] == true)) {						
							$possible = true;											
						} else {
							$impossible = true; }
					$letter++;
					}
					$letter = 0;
					//if possible to set it ---> return
					if($impossible != true)
					{
						$posX = $key2-$letterPos;
						$direction = $directions[0];
						$posY = $key;
						$posStart = $key2-$letterPos;
						$posEnd = $key2-$letterPos+$numOfLetters-1;
						$possible = true;
						return true;
					}	
				$impossible = NULL;
				}
			}
		}
	}
	$impossible = NULL;
	$possible = false;	
	check_horizontal_minus($word);
	return false;
}
function check_horizontal_minus($word) 
{
	global $direction;
	global $directions;
	global $words;
	global $posX;
	global $posY;
	global $posStart;
	global $posEnd;
	global $rows;
	global $columns;
	global $usedFields;
	global $fields;
	$impossible = NULL;
	$numOfLetters = count($words[$word]);
	
	for ($letterPos=0; $letterPos<$numOfLetters; $letterPos++)
	{
		// durchlaufen aller Wortfelder 
		foreach ($fields as $key => $value)
		{
			foreach ($value as $key2 => $value2)
			{
				// wenn Feld in Benutzung und der Buchstabe gleich bereits benutzter Buchstabe und das zu setzende Wort nicht zu lang dann....
				if ($value2 == $words[$word][$letterPos] && $usedFields[$key][$key2] == true && $key2 < $rows-$letterPos && $key2-($numOfLetters+$letterPos) >= 0)
				{
					// HORIZONTAL CHECK 
					// horizontal setzbar? -> check here!
					$s = $key2+$letterPos;
					$e = $key2+$letterPos-$numOfLetters+1;
					$letter = 0;
					for ($posX = $s; $posX>=$e; $posX--)
					{		
						if($usedFields[$key][$posX] == false || ($fields[$key][$posX] == $words[$word][$letter] && $usedFields[$key][$posX] == true)) // if the field is unused or have the same letter we keep the field unused
						{						
							$possible = true;											
						}
						else
						{	
							$impossible = true;
						}
					$letter++;
		
					}
					$letter = 0;
					//if possible to set it ---> return
					if($impossible != true)
					{
						$direction = $directions[2];
						$posY = $key;
						$posStart = $key2+$letterPos;
						$posEnd = $key2+$letterPos-$numOfLetters+1;
						$possible = true;
						return true;
					}
				$impossible = NULL;					
				}
			}
		}
	}
	$impossible = NULL;
	$possible = false;	
	check_vertical($word);
	return false;
}
function check_vertical($word)
{
	global $direction;
	global $directions;
	global $words;
	global $posX;
	global $posY;
	global $posStart;
	global $posEnd;
	global $rows;
	global $columns;
	global $usedFields;
	global $fields;
	$impossible = NULL;
	$numOfLetters = count($words[$word]);
	
	for ($letterPos=0; $letterPos<$numOfLetters; $letterPos++)
	{
		// durchlaufen aller Wortfelder 
		foreach ($fields as $key => $value)
		{
			foreach ($value as $key2 => $value2)
			{					
				if ($value2 == $words[$word][$letterPos] && $usedFields[$key][$key2] == true && $key >= $letterPos && $key+($numOfLetters-$letterPos) < $columns)
				{
					$letter = 0;
					$s = $key-$letterPos+$numOfLetters-1;
					for ($posY = $key-$letterPos; $posY<$s; $posY++)
					{							
						if($usedFields[$posY][$key2] == false || ($fields[$posY][$key2] == $words[$word][$letter] && $usedFields[$posY][$key2] == true))
						{										
							$possible = true;											
						}
						else 
						{	
							$impossible = true;
						}
					$letter++;
					}
					$letter = 0;
					//if possible to set it ---> return
					if($impossible != true)
					{
						$direction = $directions[1];
						$posX = $key2;
						$posStart = $key-$letterPos;
						$posEnd = $key-$letterPos+$numOfLetters-1;
						$possible = true;
						return $possible;
					}
				$impossible = NULL;
				}	
			}	
		}
	}
	$impossible = NULL;
	$possible = false;
	check_vertical_minus($word);
	return false;
}
function check_vertical_minus($word){
	global $direction;
	global $directions;
	global $words;
	global $posX;
	global $posY;
	global $posStart;
	global $posEnd;
	global $rows;
	global $columns;
	global $usedFields;
	global $fields;
	$impossible = NULL;
	$numOfLetters = count($words[$word]);
	
	for ($letterPos=0; $letterPos<$numOfLetters; $letterPos++)
	{
		// durchlaufen aller Wortfelder 
		foreach ($fields as $key => $value)
		{
			foreach ($value as $key2 => $value2)
			{					
				if ($value2 == $words[$word][$letterPos] && $usedFields[$key][$key2] == true && $key < $rows-$letterPos && $key-($numOfLetters+$letterPos) >= 0)
				{
					$letter = 0;
					$s = $key+$letterPos;
					$e = $key+$letterPos-$numOfLetters+1; // ist kleiner $s
					
					for ($posY = $s; $posY>=$e; $posY--)
					{							
						if($usedFields[$posY][$key2] == false || ($fields[$posY][$key2] == $words[$word][$letter] && $usedFields[$posY][$key2] == true))
						{										
							$possible = true;											
						}
						else 
						{	
							$impossible = true;
						}
					$letter++;
					}
					$letter = 0;
					//if possible to set it ---> return
					if($impossible != true)
					{
						$direction = $directions[3];
						$posX = $key2;
						$posStart = $key+$letterPos;
						$posEnd = $key+$letterPos-$numOfLetters+1;
						return true;
					}
				$impossible = NULL;
				}				
			}	
		}
	}
	$impossible = NULL;
	$possible = false;
	check_diagonalTobr($word);
	return false;
}
function check_diagonalTobr($word) 
{
	global $direction;
	global $directions;
	global $words;
	global $posX;
	global $posY;
	global $posStart;
	global $posEnd;
	global $rows;
	global $columns;
	global $usedFields;
	global $fields;
	$impossible = NULL;
	$numOfLetters = count($words[$word]);
	
	for ($letterPos=0; $letterPos<$numOfLetters; $letterPos++)
	{
		// durchlaufen aller Wortfelder 
		foreach ($fields as $key => $value)
		{
			foreach ($value as $key2 => $value2)
			{
				// wenn Feld in Benutzung und der Buchstabe gleich bereits benutzter Buchstabe und das zu setzende Wort nicht zu lang dann....
				if ($value2 == $words[$word][$letterPos] && $usedFields[$key][$key2] == true && $key2 >= $letterPos && $key >= $letterPos && $key2+($numOfLetters-$letterPos) < $rows && $key+($numOfLetters-$letterPos) < $columns)
				{
					// HORIZONTAL CHECK 
					// horizontal setzbar? -> check here!
					$letter = 0;
					$s = $key2-$letterPos+$numOfLetters;
					$posY = $key-$letterPos;
					for ($posX = $key2-$letterPos; $posX<$s; $posX++)
					{		
						if($usedFields[$posY][$posX] == false || ($fields[$posY][$posX] == $words[$word][$letter] && $usedFields[$posY][$posX] == true)) // if the field is unused or have the same letter we keep the field unused
						{						
							$possible = true;											
						}
						else
						{	
							// if not possible check vertical
							$impossible = true;	
						}
					$letter++;
					$posY++;
					}
					$letter = 0;
					//if possible to set it ---> return
					if($impossible != true)
					{
						$direction = $directions[4];
						$posY = $key-$letterPos;
						$posStart = $key2-$letterPos;
						$posEnd = $key2-$letterPos+$numOfLetters-1;
						$possible = true;
						return true;
					}	
				$impossible = NULL;
				}
			}
		}
	}
	$impossible = NULL;
	$possible = false;
	check_diagonalTotr($word);	
	return;
}
function check_diagonalTotr($word) 
{
	global $direction;
	global $directions;
	global $words;
	global $posX;
	global $posY;
	global $posStart;
	global $posEnd;
	global $rows;
	global $columns;
	global $usedFields;
	global $fields;
	$impossible = NULL;
	$numOfLetters = count($words[$word]);
	
	for ($letterPos=0; $letterPos<$numOfLetters; $letterPos++)
	{
		// durchlaufen aller Wortfelder 
		foreach ($fields as $key => $value)
		{
			foreach ($value as $key2 => $value2)
			{
				// wenn Feld in Benutzung und der Buchstabe gleich bereits benutzter Buchstabe und das zu setzende Wort nicht zu lang dann....
				if ($value2 == $words[$word][$letterPos] && $usedFields[$key][$key2] == true && $key2 >= $letterPos && $key >= $letterPos && $key2+($numOfLetters-$letterPos) < $rows && $key+($numOfLetters-$letterPos) < $columns)
				{
					$letter = 0;
					// HORIZONTAL CHECK 
					// horizontal setzbar? -> check here!
					$s = $key2-$letterPos+$numOfLetters;
					$posY = $key+($numOfLetters-$letterPos);
					for ($posX = $key2-$letterPos; $posX<$s; $posX++)
					{		
						if($usedFields[$posY][$posX] == false || ($fields[$posY][$posX] == $words[$word][$letter] && $usedFields[$posY][$posX] == true)) // if the field is unused or have the same letter we keep the field unused
						{						
							$possible = true;											
						}
						else
						{	
							// if not possible check vertical
							$impossible = true;	
						}
					$posY--;
					$letter++;
					}
					$letter = 0;
					//if possible to set it ---> return
					if($impossible != true)
					{
						$direction = $directions[6];
						$posY = $key+($numOfLetters-$letterPos);
						$posStart = $key2-$letterPos;
						$posEnd = $key2-$letterPos+$numOfLetters-1;
						$possible = true;
						return true;
					}	
				$impossible = NULL;
				}
			}
		}
	}
	$impossible = NULL;
	$possible = false;	
	check_diagonalTotl($word);
	return;
}
function check_diagonalTotl($word) 
{
	global $direction;
	global $directions;
	global $words;
	global $posX;
	global $posY;
	global $posStart;
	global $posEnd;
	global $rows;
	global $columns;
	global $usedFields;
	global $fields;
	$impossible = NULL;
	$numOfLetters = count($words[$word]);
	
	for ($letterPos=0; $letterPos<$numOfLetters; $letterPos++)
	{
		// durchlaufen aller Wortfelder 
		foreach ($fields as $key => $value)
		{
			foreach ($value as $key2 => $value2)
			{
				// wenn Feld in Benutzung und der Buchstabe gleich bereits benutzter Buchstabe und das zu setzende Wort nicht zu lang dann....
				if ($value2 == $words[$word][$letterPos] && $usedFields[$key][$key2] == true && $key2 < $rows-$letterPos && $key2-($numOfLetters+$letterPos) >= 0 && $key >= $letterPos && $key+($numOfLetters-$letterPos) < $columns)
				{
					// HORIZONTAL CHECK 
					// horizontal setzbar? -> check here!
					$letter = 0;
					$s = $key2+$letterPos;
					$e = $key2+$letterPos-$numOfLetters+1;
					$posY = $key+($numOfLetters-$letterPos);
					for ($posX = $s; $posX>=$e; $posX--)
					{		
						if($usedFields[$posY][$posX] == false || ($fields[$posY][$posX] == $words[$word][$letter] && $usedFields[$posY][$posX] == true)) // if the field is unused or have the same letter we keep the field unused
						{						
							$possible = true;											
						}
						else
						{	
							$impossible = true;
						}
					$letter++;
					$posY--;
					}
					$letter = 0;
					//if possible to set it ---> return
					if($impossible != true)
					{
						$direction = $directions[5];
						$posY = $key+($numOfLetters-$letterPos);
						$posStart = $key2+$letterPos;
						$posEnd = $key2+$letterPos-$numOfLetters+1;
						$possible = true;
						return true;
					}
				$impossible = NULL;					
				}
			}
		}
	}
	$impossible = NULL;
	$possible = false;	
	check_diagonalTobl($word);
	return;
}
function check_diagonalTobl($word) 
{
	global $direction;
	global $directions;
	global $words;
	global $posX;
	global $posY;
	global $posStart;
	global $posEnd;
	global $rows;
	global $columns;
	global $usedFields;
	global $fields;
	$impossible = NULL;
	$numOfLetters = count($words[$word]);
	
	for ($letterPos=0; $letterPos<$numOfLetters; $letterPos++)
	{
		// durchlaufen aller Wortfelder 
		foreach ($fields as $key => $value)
		{
			foreach ($value as $key2 => $value2)
			{
				// wenn Feld in Benutzung und der Buchstabe gleich bereits benutzter Buchstabe und das zu setzende Wort nicht zu lang dann....
				if ($value2 == $words[$word][$letterPos] && $usedFields[$key][$key2] == true && $key2 < $rows-$letterPos && $key2-($numOfLetters+$letterPos) >= 0 && $key >= $letterPos && $key+($numOfLetters-$letterPos) < $columns)
				{
					// HORIZONTAL CHECK 
					// horizontal setzbar? -> check here!
					$s = $key2+$letterPos;
					$e = $key2+$letterPos-$numOfLetters+1;
					$letter = 0;
					$posY = $key-$letterPos;
					
					for ($posX = $s; $posX>=$e; $posX--)
					{		
						if($usedFields[$posY][$posX] == false || ($fields[$posY][$posX] == $words[$word][$letter] && $usedFields[$posY][$posX] == true)) // if the field is unused or have the same letter we keep the field unused
						{						
							$possible = true;											
						}
						else
						{	
							$impossible = true;
						}
					$letter++;
					$posY++;
					}
					$letter = 0;
					if($impossible != true) {
						$direction = $directions[7];
						$posY = $key-$letterPos;
						$posStart = $key2+$letterPos;
						$posEnd = $key2+$letterPos-$numOfLetters+1;
						$possible = true;
						return true;
					}	
				$impossible = NULL;
				}
			}
		}
	}
	$impossible = NULL;
	$possible = false;	
	return false;
}


function try_position($word) {	
	global $direction;
	global $directions;
	global $words;
	global $posX;
	global $posY;
	global $posStart;
	global $posEnd;
	global $rows;
	global $columns;
	global $usedFields;
	global $fields;
	global $possible;		
	$numOfLetters = count($words[$word]);
	$direction = array_rand($directions, 1);
    switch($direction) {
        case 0: 
        $samePosition = 0;
        $letterPos = 0;
        $rowl = $rows-1;
        $value_range = ($columns-$numOfLetters);
        $posStart = rand(0, $value_range);
        $posY = rand(0, $rowl);
        $posEnd = ($posStart+$numOfLetters)-1;
        for ($posX = $posStart; $posX<=$posEnd; $posX++) {
            if($usedFields[$posY][$posX] == false || $fields[$posY][$posX] == $words[$word][$letterPos]) {						
                $possible = true;
                if ($fields[$posY][$posX] == $words[$word][$letterPos]) {
                    $samePosition++;	
                }
            } else {
                $possible = false;
                return $possible;				
            }
        $letterPos++;
        }
        if ($samePosition == $numOfLetters) // here we have a full word inside an other word; that we dont want!<br />
        {
            $possible = false;
            return $possible;
            
        }
        if ($samePosition != $numOfLetters && $possible == true )
        {
            $posX = $posStart;
            $possible = true;
            return $possible;
        }
        break;
        ////////////////////// HORIZONTAL MINUS
        case 2:
        $samePosition = 0;
        $letterPos = 0;
        $value_range = ($columns-$numOfLetters);
        $posStart = rand(0, $value_range);
        $posY = rand(0, ($rows-1));
        $posEnd = $posStart+$numOfLetters-1;
        
        for ($posX = $posEnd; $posX>=$posStart; $posX--)
        {
            if($usedFields[$posY][$posX] == false || $fields[$posY][$posX] == $words[$word][$letterPos]) // if the field is unused or have the same letter we keep the field unused
            {						
                $possible = true;
                if ($fields[$posY][$posX] == $words[$word][$letterPos])
                {
                    $samePosition++;	
                }
            }
            else 
            {
                $possible = false;
                return $possible;			
            }
        $letterPos++;
        }
        if ($samePosition == $numOfLetters) // here we have a full word inside an other word; that we dont want!<br />
        {
            $possible = false;
            return $possible;
            
        }
        if ($samePosition != $numOfLetters && $possible == true )
        {
            $posX = $posStart;
            $possible = true;
            return $possible; // if all is free return true
        }
        break;
        //////////////// VERTICAL
        case 1: 
        $samePosition = 0;
        $letterPos = 0;
        $value_range = ($rows-$numOfLetters);
        $posStart = rand(0, $value_range);
        $posX = rand(0, ($columns-1));
        $posEnd = $posStart+$numOfLetters-1;
        //checking fields if used
        for ($posY = $posStart; $posY<=$posEnd; $posY++)
        {
            if($usedFields[$posY][$posX] == false || $fields[$posY][$posX] == $words[$word][$letterPos]) // if the field is unused or have the same letter we keep the field unused
            {						
                $possible = true;	
                if ($fields[$posY][$posX] == $words[$word][$letterPos])
                {
                    $samePosition++;	
                }
            }
            else 
            {
                $possible = false;
                return $possible;
            }
            $letterPos++;
        }
        if ($samePosition == $numOfLetters) // here we have a full word inside an other word; that we dont want!
        {
            $possible = false;
            return $possible;
        }
        if ($samePosition != $numOfLetters && $possible == true )
        {
            $possible = true;
            return $possible;
        }
        break;
        ////////// VERTICAL MINUS
        case 3:
        $samePosition = 0;
        $letterPos = 0;
        $value_range = ($rows-$numOfLetters);
        $posStart = rand(0, $value_range);
        $posX = rand(0, ($columns-1));
        $posEnd = $posStart+$numOfLetters-1;
        
        for ($posY = $posEnd; $posY>=$posStart; $posY--)
        {
            if($usedFields[$posY][$posX] == false || $fields[$posY][$posX] == $words[$word][$letterPos]) // if the field is unused or have the same letter we keep the field unused
            {						
                $possible = true;
                if ($fields[$posY][$posX] == $words[$word][$letterPos])
                {	
                    $samePosition++;	
                }
            }
            else 
            {
                $possible = false;
                return $possible;
            }
            $letterPos++;
        }
        if ($samePosition == $numOfLetters) // here we have a full word inside an other word; that we dont want!
        {
            $possible = false;
            return $possible;
        }
        if ($samePosition != $numOfLetters && $possible == true ) 
        {
            $possible = true;
            return $possible;
        }
        break;	
        
        case 4: 
        $samePosition = 0;
        $letterPos = 0;
        $rowl = $rows-1;
        $value_range = ($columns-$numOfLetters);
        $posStart = rand(0, $value_range);
        $posY = rand(0, $value_range);
        $posY2 = $posY;
        $posEnd = ($posStart+$numOfLetters)-1;
        //checking fields if used		
        for ($posX = $posStart; $posX<=$posEnd; $posX++)
        {
            if($usedFields[$posY2][$posX] == false || $fields[$posY2][$posX] == $words[$word][$letterPos]) // if the field is unused or have the same letter we keep the field unused
            {						
                $possible = true;
                if ($fields[$posY][$posX] == $words[$word][$letterPos])
                {
                    $samePosition++;	
                }
            }
            else 
            {
                $possible = false;
                return $possible;				
            }
        $posY2++;
        $letterPos++;
        }
        if ($samePosition == $numOfLetters) // here we have a full word inside an other word; that we dont want!<br />
        {
            $possible = false;
            return $possible;
            
        }
        if ($samePosition != $numOfLetters && $possible == true ) 
        {
            $possible = true;
            return $possible;
        }
        break;
        
        //NEGATIV (X/Y) DIAGONAL 
        case 5: 
        $samePosition = 0;
        $letterPos = 0;
        $rowl = $rows-1;
        $value_range = ($rows-$numOfLetters);
        $posStart = rand(0, $value_range);
        $posY = rand(0, $value_range)+$numOfLetters-1;
        
        $posY2 = $posY;
        $posEnd = ($posStart+$numOfLetters)-1;
        //checking fields if used		
        for ($posX = $posEnd; $posX>=$posStart; $posX--)
        {
            if($usedFields[$posY2][$posX] == false || $fields[$posY2][$posX] == $words[$word][$letterPos]) // if the field is unused or have the same letter we keep the field unused
            {						
                $possible = true;
                if ($fields[$posY2][$posX] == $words[$word][$letterPos])
                {	
                    $samePosition++;	
                }
            }
            else 
            {
                $possible = false;
                return $possible;
            }
            $letterPos++;
            $posY2--;
        }
        if ($samePosition == $numOfLetters) // here we have a full word inside an other word; that we dont want!
        {
            $possible = false;
            return $possible;
        }
        if ($samePosition != $numOfLetters && $possible == true )
        {
            $possible = true;
            return $possible;
        }
        break;
        
        //POSITIV (X) NEGATIV (Y) DIAGONAL 
        case 6: 
        $samePosition = 0;
        $letterPos = 0;
        $rowl = $rows-1;
        $value_range = ($rows-$numOfLetters);
        $posStart = rand(0, $value_range);
        $posY = rand(0, $value_range)+$numOfLetters-1;
        
        $posY2 = $posY;
        $posEnd = ($posStart+$numOfLetters)-1;
        //checking fields if used		
        for ($posX = $posStart; $posX<=$posEnd; $posX++)
        {
            if($usedFields[$posY2][$posX] == false || $fields[$posY2][$posX] == $words[$word][$letterPos]) // if the field is unused or have the same letter we keep the field unused
            {						
                $possible = true;
                if ($fields[$posY2][$posX] == $words[$word][$letterPos])
                {	
                    $samePosition++;	
                }
            }
            else 
            {
                $possible = false;
                return $possible;
            }
            $letterPos++;
            $posY2--;
        }
        if ($samePosition == $numOfLetters) {
            $possible = false;
            return $possible;
        }
        if ($samePosition != $numOfLetters && $possible == true) {
            $possible = true;
            return $possible;
        }
        break;
        case 7: 
        $samePosition = 0;
        $letterPos = 0;
        $value_range = ($rows-$numOfLetters);
        $posStart = rand(0, $value_range);
        $posY = rand(0, $value_range);
        $posY2 = $posY;
        $posEnd = ($posStart+$numOfLetters)-1;
        for ($posX = $posEnd; $posX>=$posStart; $posX--) {
            if($usedFields[$posY2][$posX] == false || $fields[$posY2][$posX] == $words[$word][$letterPos]) {						
                $possible = true;
                if ($fields[$posY2][$posX] == $words[$word][$letterPos]) {	
                    $samePosition++;	
                }
            }
            else {
                $possible = false;
                return $possible;
            }
            $letterPos++;
            $posY2++;
        }
        if ($samePosition == $numOfLetters) {
            $possible = false;
            return $possible;
        }
        if ($samePosition != $numOfLetters && $possible == true ) {
            $possible = true;
            return $possible;
        }
        break;
    }
}

function set_word ($rows, $columns, $word) {
	global $direction; 
	global $usedFields; 
	global $posX;
	global $posY;
	global $posStart;
	global $posEnd;
	global $fields;
	global $words; 
	global $wordNum;
	global $fullWords;
	$letterPos = 0;
	
	if ($direction == 0 || $direction == 2) {
		if($direction == 0) {
			for ($posX = $posStart; $posX<=$posEnd; $posX++) {
				$fields[$posY][$posX] = $words[$word][$letterPos];
				$usedFields[$posY][$posX] = true;		// here we set the field to true 
				$fullWords .= $words[$word][$letterPos]; 
				if (isset($wordNum[$posY][$posX])) {				
					$wordNum[$posY][$posX] .= ", ".$word;
				} else {
					$wordNum[$posY][$posX] = $word;
				}
				$letterPos++;
			}
		$fullWords .= ' ';
		}
		if($direction == 2) {
			for ($posX = $posEnd; $posX>=$posStart; $posX--) {											
				$fields[$posY][$posX] = $words[$word][$letterPos];
				$usedFields[$posY][$posX] = true;		// here we set the field to true 
				$fullWords .= $words[$word][$letterPos]; 
				if (isset($wordNum[$posY][$posX])) {				
					$wordNum[$posY][$posX] .= ", ".$word;
				} else {
					$wordNum[$posY][$posX] = $word;
				}
				$letterPos++;
			}
		$fullWords .= ' ';
		}	
	}
	if ($direction == 1 || $direction == 3) {
		if($direction == 1) {
			for ($posY = $posStart; $posY<=$posEnd; $posY++) {											
				$fields[$posY][$posX] = $words[$word][$letterPos];						
				$usedFields[$posY][$posX] = true;
				$fullWords .= $words[$word][$letterPos];
				if (isset($wordNum[$posY][$posX])) {				
					$wordNum[$posY][$posX] .= ", ".$word;
				} else {
					$wordNum[$posY][$posX] = $word;
				}
				$letterPos++;	
			}
			$fullWords .= ' ';
		}
		if($direction == 3) {
			for ($posY = $posEnd; $posY>=$posStart; $posY--) {											
				$fields[$posY][$posX] = $words[$word][$letterPos];						
				$usedFields[$posY][$posX] = true;
				$fullWords .= $words[$word][$letterPos];
				if (isset($wordNum[$posY][$posX])) {				
					$wordNum[$posY][$posX] .= ", ".$word;
				} else {
					$wordNum[$posY][$posX] = $word;
				}
				$letterPos++;	
			}
		$fullWords .= ' ';
		}
	}
	if($direction == 4) {
		for ($posX = $posStart; $posX<=$posEnd; $posX++) {											
			$fields[$posY][$posX] = $words[$word][$letterPos];
			$usedFields[$posY][$posX] = true;		// here we set the field to true 
			$fullWords .= $words[$word][$letterPos]; 
			if (isset($wordNum[$posY][$posX])) {				
				$wordNum[$posY][$posX] .= ", ".$word;
			} else {
				$wordNum[$posY][$posX] = $word;
			}
			$letterPos++;
			$posY++;	
		}
		$fullWords .= ' ';
	}
	if($direction == 5) {
		for ($posX = $posEnd; $posX>=$posStart; $posX--) {											
			$fields[$posY][$posX] = $words[$word][$letterPos];
			$usedFields[$posY][$posX] = true;		 
			$fullWords .= $words[$word][$letterPos]; 
			if (isset($wordNum[$posY][$posX])) {				
				$wordNum[$posY][$posX] .= ", ".$word;
			} else {
				$wordNum[$posY][$posX] = $word;
			}
			$letterPos++;
			$posY--;	
		}
		$fullWords .= ' ';
	}
	if($direction == 6) {
		for ($posX = $posStart; $posX<=$posEnd; $posX++) {											
			$fields[$posY][$posX] = $words[$word][$letterPos];
			$usedFields[$posY][$posX] = true;	 
			$fullWords .= $words[$word][$letterPos]; 
			if (isset($wordNum[$posY][$posX])) {				
				$wordNum[$posY][$posX] .= ", ".$word;
			} else {
				$wordNum[$posY][$posX] = $word;
			}
			$letterPos++;
			$posY--;	
		}
		$fullWords .= ' ';
	}
	if($direction == 7) {
		for ($posX = $posEnd; $posX>=$posStart; $posX--) {											
			$fields[$posY][$posX] = $words[$word][$letterPos];
			$usedFields[$posY][$posX] = true;	 
			$fullWords .= $words[$word][$letterPos]; 
			if (isset($wordNum[$posY][$posX])) {				
				$wordNum[$posY][$posX] .= ", ".$word;
			} else {
				$wordNum[$posY][$posX] = $word;
			}
			$letterPos++;
			$posY++;
		}
		$fullWords .= ' ';
	}
}

?>
