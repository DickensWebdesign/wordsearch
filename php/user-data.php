<?php
require_once "connection.php";
class User {
    private $db;
    private $userData               = [];
    private $userMainGameData       = [];
    private $userTop100             = [];
    private $userTop100_mobile      = [];
    private $userGameData           = [];
    private $userGameData_mobile    = [];

    function __construct() {
        global $db;
        $this->db = $db;
    }
    // controls private methods/functions in this class
    public function checkMainGameData($user_id, $game) {
        $this->getMainData($user_id);
        $this->getExistingMainGameData($user_id);
        $this->getExistingGameData($user_id);
        $this->getPersonalHighscoreGameData($user_id);
        return true;
    }
    private function getExistingMainGameData($user_id) {
        $query = "SELECT user_all_games, user_started_games, user_complete_games, user_last_game FROM `user_results` WHERE `user_id` = ?";
        $stmt = $this->db->prepare($query);
        $stmt->bind_param("i", $user_id);
        if($stmt->execute()) {
            $stmt->bind_result($userAllGames, $userStartedGames, $userCompleteGames, $userLastGame);
            if ($result = $stmt->fetch()) {
                $this->userMainGameData['userAllGames'] = $userAllGames;
                $this->userMainGameData['userAllGamesStarted'] = $userStartedGames;
                $this->userMainGameData['userGamesComplete'] = $userCompleteGames;
                $this->userMainGameData['userLastGame'] = $userLastGame;
            }
            $stmt->close();
            return true;
        }
        $stmt->close();
        return false;
    }
    private function getExistingGameData($user_id) {
        $query = "SELECT * FROM crossword_user_made_games WHERE user_id = $user_id";
        $result = $this->db->query($query);
        if($result) {
            while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
                $this->userGameData[] = $row;
            }
        }
        $result->close();
        $query = "SELECT * FROM crossword_user_made_games_mobile WHERE user_id = $user_id";
        $result = $this->db->query($query);
        if($result) {
            while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
                $this->userGameData_mobile[] = $row;
            }
        }
        $result->close();
        if($this->userGameData !== "") {
            return true;
        }
        return false;
    }
    // personal game highscore - at come to page
    private function getMainData($user_id) {
        $query = "SELECT * FROM `user` WHERE user_id = $user_id";
        $result = $this->db->query($query);
        if($result) {
            while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
                $this->userData[] = $row;
            }
            $result->close();
            return true;
        }
    }
    private function getPersonalHighscoreGameData($user_id) {
        $query = "SELECT * FROM `crossword_user_top_100` WHERE `user_id` = $user_id ORDER BY user_time";
        $result = $this->db->query($query);
        if($result) {
            while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
                $this->userTop100[] = $row;
            }
        }
        $result->close();
        $query = "SELECT * FROM `crossword_user_top_100_mobile` WHERE `user_id` = $user_id ORDER BY user_time";
        $result = $this->db->query($query);
        if($result) {
            while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
                $this->userTop100_mobile[] = $row;
            }
        }
        $result->close();
    }
    public function __get($name) {
        if(isset($this->$name)) {
            return $this->$name;
        }
        return false;
    }
}
