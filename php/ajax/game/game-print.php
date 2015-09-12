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

$words = array(); 			// the words to use - => filled by --> create_words_for_game()
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
$directions = array("horizontal","vertical","horizontalminus","verticalminus","diagonalTobr","diagonalTotl","diagonalTotr","diagonalTobl"); // direction of words

echo set_gamesettings();  

function output() {
	global $rows;
	global $columns;
	global $usedFields;
	global $wordNum;
	global $fields;
	global $wordsInMenu;
	global $db;
    ?>
	<div id='game-wrapper-print'>
	    <div id="game-main-print">
            <div id="game-center-print">
	            <table>
        <?php
		for ($r=0; $r<$rows; $r++) {
		// building rows
		echo "<tr";
        if ($r == 0) {
            echo ' id="row-first" ';
        }
		echo ">";
		for ($c=0; $c<$columns; $c++)
		{
			echo "<td class='white-print'";
			if ($usedFields[$r][$c] == true)
			{
				echo  "data-id='".$wordNum[$r][$c]."'";
			}
			else
			{
				echo  "data-id='9999'";
			}
			echo ">";
			echo "<span class='letter'>".$fields[$r][$c]."</span>";
			echo "</td>\r";
		}
		echo "</tr>\r";
	}
	echo "</table></div>";

    /* game-right */
        asort($wordsInMenu); // OUTPUT -> Menu sorting array from a to z
        echo "<div id='game-right-print'>";
        echo "<p class='menuHeadline wordheader'>WORDS</p><hr />";
        echo "<div class='wordbox-print'>";
        foreach ($wordsInMenu as $key => $val) {
            if ($val != "") {
                echo "<p class='wordlist' id='" . $key . "'>" . $val . "</p>";
            }
        }
    ?>
    </div></div></div></div>
    <?php
}
function set_gamesettings(){
    global $columns;
	global $rows;
	global $numOfWords;
	// set numbers of columns
    $columns = 20;
    $rows = 20;
    $numOfWords = 20;
    start_check();
}

function start_check()
{
    global $db;
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
		// then its setable / so we set the words	
		if($setable == true)
		{
			set_word($rows, $columns, $word);
			$setable = false;	
			$error = 0;
		}	 
	}
    output();
}

// creating a random letter / called by create_field_array()
function create_Ran_Letter() {
$randomVal = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
$randomString = '';
$randomString .= $randomVal[rand(0, strlen($randomVal) - 1)];
return $randomString;
}
// create the gamefield - first step with random values - returns a multi-array "fields" +++++ WORKS +++++
function create_field_array($columns, $rows) {
	
	global $fields; // used to set fields
	
	for($row = 0; $row<$rows; $row++) // ATTENTION - here we need the < operator cause the array have the keypos. 0 
	{
		for ($col = 0; $col<$columns; $col++)
		{
			$value = create_Ran_Letter(); // here we call the random function
			$fields[$row][$col] = $value;
		}
	}
}
/* CREATES PHP ARRAYS FOR OUTPUT */
function create_words_for_game($numOfWords, $rows) {
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
// function to check if the word is CROSSABLE / function calling itselfs / check_horizontal calls => check_horizontal_minus calls => check_vertical etc... 
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
				if ($value2 == $words[$word][$letterPos] && $usedFields[$key][$key2] == true && $key2 >= $letterPos && $key2+($numOfLetters-$letterPos) < $rows)
				{
					// HORIZONTAL CHECK 
					// horizontal setzbar? -> check here!
					$posEnd = $key2-$letterPos+$numOfLetters;
					$letter = 0;
					for ($posX = $key2-$letterPos; $posX<$posEnd; $posX++)
					{		
						if($usedFields[$key][$posX] == false || ($fields[$key][$posX] == $words[$word][$letter] && $usedFields[$key][$posX] == true)) // if the field is unused or have the same letter we keep the field unused
						{						
							$possible = true;											
						}
						else
						{	
							// if not possible check vertical
							$impossible = true;	
						}
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
function check_vertical_minus($word)
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
					//if possible to set it ---> return
					if($impossible != true)
					{
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

// function to check position of the word if NOT CROSSABLE / initialized by check_diagonalTobl()
function try_position($word)
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
	global $check;
	global $possible;		
	$numOfLetters = count($words[$word]);
	$direction = array_rand($directions, 1);
	
		switch($direction) 
		{
			//////// HORIZONTAL
			case 0: 
			$samePosition = 0;
			$letterPos = 0;
			$rowl = $rows-1;
			$value_range = ($columns-$numOfLetters);
			$posStart = rand(0, $value_range);
			$posY = rand(0, $rowl);
			$posEnd = ($posStart+$numOfLetters)-1;
			//checking fields if used		
			for ($posX = $posStart; $posX<=$posEnd; $posX++)
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
			if ($samePosition == $numOfLetters) // here we have a full word inside an other word; that we dont want!
			{
				$possible = false;
				return $possible;
			}
			if ($samePosition != $numOfLetters && $possible == true)
			{
				$possible = true;
				return $possible;
			}
			break;
			//POSITIV (Y) NEGATIV (X) DIAGONAL 
			case 7: 
			$samePosition = 0;
			$letterPos = 0;
			$rowl = $rows-1;
			$value_range = ($rows-$numOfLetters);
			$posStart = rand(0, $value_range);
			$posY = rand(0, $value_range);
			
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
				$posY2++;
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
		} // switch . case ends here
}

// finally if word setable through try_position(), we set the word / preparing word for output 
// called if setable / if not error var increased / after 299 errors we restart the game-logic 
function set_word ($rows, $columns, $word)
{
	global $direction; // direction of the word
	global $usedFields; // used fields by real words 
	global $posX;
	global $posY;
	global $posStart;
	global $posEnd;
	global $fields; // all fields
	global $words; // array of real words
	global $wordNum;
	global $fullWords;
	
	$letterPos = 0;
	
	if ($direction == 0 || $direction == 2)
	{
		if($direction == 0)
		{
			for ($posX = $posStart; $posX<=$posEnd; $posX++)
			{									
					
				$fields[$posY][$posX] = $words[$word][$letterPos];
				$usedFields[$posY][$posX] = true;		// here we set the field to true 
				$fullWords .= $words[$word][$letterPos]; 
				if (isset($wordNum[$posY][$posX]))
				{				
					$wordNum[$posY][$posX] .= ", ".$word;
				}
				else
				{
					$wordNum[$posY][$posX] = $word;
				}
				$letterPos++;
			}
		$fullWords .= ' ';
		}
		if($direction == 2)
		{
			for ($posX = $posEnd; $posX>=$posStart; $posX--)
			{											
				$fields[$posY][$posX] = $words[$word][$letterPos];
				$usedFields[$posY][$posX] = true;		// here we set the field to true 
				$fullWords .= $words[$word][$letterPos]; 
				if (isset($wordNum[$posY][$posX]))
				{				
					$wordNum[$posY][$posX] .= ", ".$word;
				}
				else
				{
					$wordNum[$posY][$posX] = $word;
				}
				$letterPos++;
			}
		$fullWords .= ' ';
		}	
	}
	if ($direction == 1 || $direction == 3)
	{
		if($direction == 1)
		{
			for ($posY = $posStart; $posY<=$posEnd; $posY++)
			{											
				$fields[$posY][$posX] = $words[$word][$letterPos];						
				$usedFields[$posY][$posX] = true;
				$fullWords .= $words[$word][$letterPos];
				if (isset($wordNum[$posY][$posX]))
				{				
					$wordNum[$posY][$posX] .= ", ".$word;
				}
				else
				{
					$wordNum[$posY][$posX] = $word;
				}
					
				$letterPos++;	
			}
			$fullWords .= ' ';
		}
		if($direction == 3)
		{
			for ($posY = $posEnd; $posY>=$posStart; $posY--)
			{											
				$fields[$posY][$posX] = $words[$word][$letterPos];						
				$usedFields[$posY][$posX] = true;
				$fullWords .= $words[$word][$letterPos];
				if (isset($wordNum[$posY][$posX]))
				{				
					$wordNum[$posY][$posX] .= ", ".$word;
				}
				else
				{
					$wordNum[$posY][$posX] = $word;
				}
					
				$letterPos++;	
			}
		$fullWords .= ' ';
		}
	}
	if($direction == 4)
	{
		for ($posX = $posStart; $posX<=$posEnd; $posX++)
		{											
			$fields[$posY][$posX] = $words[$word][$letterPos];
			$usedFields[$posY][$posX] = true;		// here we set the field to true 
			$fullWords .= $words[$word][$letterPos]; 
			if (isset($wordNum[$posY][$posX]))
			{				
				$wordNum[$posY][$posX] .= ", ".$word;
			}
			else
			{
				$wordNum[$posY][$posX] = $word;
			}
			$letterPos++;
			$posY++;	
		}
		$fullWords .= ' ';
	}
	if($direction == 5)
	{
		for ($posX = $posEnd; $posX>=$posStart; $posX--)
		{											
			$fields[$posY][$posX] = $words[$word][$letterPos];
			$usedFields[$posY][$posX] = true;		// here we set the field to true 
			$fullWords .= $words[$word][$letterPos]; 
			if (isset($wordNum[$posY][$posX]))
			{				
				$wordNum[$posY][$posX] .= ", ".$word;
			}
			else
			{
				$wordNum[$posY][$posX] = $word;
			}
			$letterPos++;
			$posY--;	
		}
		$fullWords .= ' ';
	}
	if($direction == 6)
	{
		for ($posX = $posStart; $posX<=$posEnd; $posX++)
		{											
			$fields[$posY][$posX] = $words[$word][$letterPos];
			$usedFields[$posY][$posX] = true;		// here we set the field to true 
			$fullWords .= $words[$word][$letterPos]; 
			if (isset($wordNum[$posY][$posX]))
			{				
				$wordNum[$posY][$posX] .= ", ".$word;
			}
			else
			{
				$wordNum[$posY][$posX] = $word;
			}
			$letterPos++;
			$posY--;	
		}
		$fullWords .= ' ';
	}
	if($direction == 7)
	{
		for ($posX = $posEnd; $posX>=$posStart; $posX--)
		{											
			$fields[$posY][$posX] = $words[$word][$letterPos];
			$usedFields[$posY][$posX] = true;		// here we set the field to true 
			$fullWords .= $words[$word][$letterPos]; 
			if (isset($wordNum[$posY][$posX]))
			{				
				$wordNum[$posY][$posX] .= ", ".$word;
			}
			else
			{
				$wordNum[$posY][$posX] = $word;
			}
			$letterPos++;
			$posY++;
		}
		$fullWords .= ' ';
	}
}

?>
