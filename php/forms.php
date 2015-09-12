<?php
if (strpos($path, "memberarea") || strpos($path, "multiplayer")) {
    require_once("../lang/en.php");
} else {
    require_once("lang/en.php");
}
function ajaxStartMessage() {
    global $form_loading;
    ?>
    <div class="loading-info">
        <div class="loading">
            <img src="<?php echo $_SESSION['root']; ?>img/icons/loading.gif"
                 alt="<?php echo $form_loading[0]; ?>" title="<?php echo $form_loading[1]; ?>" />
            <p><?php echo $form_loading[1]; ?></p>
        </div>
    </div>
<?php
}

function createModalFormFooter () {
    ajaxStartMessage();
    echo '</div></div>';
};
function createModalFormHeader ($id = null) {
    global $form_close;
    if($_SESSION['mobile'] === true) {
        $closeImg = "icon-x.png";
    } else {
        $closeImg = "close.png";
    }
    $wrapperStart = null;
    $wrapperEnd = null;
    if ($_SESSION['mobile'] == false) {
        $wrapperStart = '<div class="center">';
        $wrapperEnd = '</div>';
    }
    echo  '<div class="bwc-modal-frame '. $id .'">';
    echo $wrapperStart . '<img src="'.$_SESSION['root'].'img/icons/' . $closeImg . '" id="bwc-closer-'.$id.'" class="closer close-img" alt="Close" title="'. $form_close[0] . $id . '" />' . $wrapperEnd;
    echo '<div class="bwc-modal-content">';
}
// login//logout/register

function addLogin() {
    global $form_header;
    global $form_inputs;
    global $form_placeholder;
    global $form_requirements;
    global $form_button_value;
    global $form_button_title;
    global $form_links;
    global $form_content_logout;
    if ($_SESSION['logged_in'] === true) {
        createModalFormHeader("logout"); ?>
        <a id="logout-user"></a>
        <p class="bwc-modal-headtext"><?php echo $form_header[0]; ?></p>
        <form action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" method="post" id="logout">
        <div id="replace-logout">
            <p class="form-name">&nbsp;</p>
            <p class="form-requirements"><?php echo $form_content_logout[0]; ?></p>
            <p class="form-name">&nbsp;</p>
            <hr />
            <p class="form-error">&nbsp;</p>
            <input type="submit" class="user-button-single" value="<?php echo $form_button_value[2]; ?>"/>
            <div class="clearer"></div>
        </div>
        </form>
        <?php createModalFormFooter();
    } else {
        createModalFormHeader("reset");

        ?>

        <a id="reset-password"></a>
        <p class="bwc-modal-headtext"><?php echo $form_header[2]; ?></p>
        <form action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" method="post" id="reset">
            <div id="replace-reset">
                <p class="form-requirements"><strong><?php echo $form_requirements[1]; ?></strong></p>
                <p class="form-name"><label for="mail-reset"><?php echo $form_inputs[0]; ?></label><span class="form-input">
                        <input type="email" id="mail-reset" required="required" placeholder="<?php echo $form_placeholder[0]; ?>" maxlength="50" tabindex="1"/></span></p>
                <hr/>
                <p class="form-error">&nbsp;</p>
                <input type="submit" class="user-button-single" value="<?php echo $form_button_value[3]; ?>" />
                <div class="clearer"></div>
            </div>
        </form>
        <?php createModalFormFooter();
        createModalFormHeader("login"); ?>
        <a id="login-user"></a>
        <p class="bwc-modal-headtext"><?php echo $form_header[1]; ?></p>
        <form action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" method="post" id="login">
            <div id="replace-login">
                <p class="form-requirements"><strong><?php echo $form_requirements[0] ?></strong></p>
                <p class="form-name"><label for="mail-login"><?php echo $form_inputs[0]; ?></label>
                    <span class="form-input"><input type="email" id="mail-login" required="required" placeholder="<?php echo $form_placeholder[0]; ?>" maxlength="50" tabindex="1"/></span></p>
                <p class="form-name"><label for="password-login"><?php echo $form_inputs[1]; ?></label>
                    <span class="form-input"><input type="password" id="password-login" required="required" placeholder="<?php echo $form_placeholder[1]; ?>" maxlength="50" tabindex="2"/></span></p>
                <p class="form-name"><label for="remember-login"><?php echo $form_inputs[2]; ?></label>
                    <span class="form-input">
                    <?php if ($_SESSION['mobile'] == true) {
                        echo '<label class="switch">';
                    }
                    echo '<input type="checkbox" id="remember-login" tabindex="3" class="keeping 2 ';
                    if ($_SESSION['mobile'] == true) {
                        echo ' switch-input';
                    }
                    echo '" />';
                    if ($_SESSION['mobile'] == true) {
                        echo '<span class="switch-label" data-on="On" data-off="Off"></span><span class="switch-handle"></span></label>';
                    } ?>
                </span></p><hr/>
                <p class="form-error">&nbsp;</p>
                <input type="submit" class="user-button-single" value="<?php echo $form_button_value[0]; ?>" />
                <div class="bwc-modal-footer"><a href="#reset-password" class="reset opener" title="<?php echo $form_header[2]; ?>"><?php echo $form_links[0]; ?></a></div>
            </div>
        </form>
        <?php
        createModalFormFooter();
        createModalFormHeader("register");
        ?>
        <a id="register-user"></a>
        <p class="bwc-modal-headtext"><?php echo $form_header[3]; ?></p>
            <form action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" method="post" id="register">
                <div id="replace-register">
                    <p class="form-requirements"><strong><?php echo $form_requirements[1]; ?></strong></p>
                    <p class="form-name"><label for="playername-register"><?php echo $form_inputs[3]; ?></label>
                        <span class="form-input"><input type="text" id="playername-register" required="required" placeholder="<?php echo $form_placeholder[2]; ?>" maxlength="12" tabindex="1" /></span></p>
                    <p class="form-name"><label for="mail-register"><?php echo $form_inputs[0]; ?></label>
                        <span class="form-input"><input type="email" id="mail-register" required="required" placeholder="<?php echo $form_placeholder[0]; ?>" maxlength="50" tabindex="2" /></span></p>
                    <p class="form-name"><label for="password-register"><?php echo $form_inputs[1]; ?></label>
                        <span class="form-input"><input type="password" id="password-register" required="required" placeholder="<?php echo $form_placeholder[1]; ?>" maxlength="50" tabindex="3" /></span></p>
                        <hr/>
                        <p class="form-error">&nbsp;</p>
                        <input type="submit" class="user-button-single" value="<?php echo $form_button_value[1]; ?>" />
                    <div class="clearer"></div>
                </div>
            </form>
        <?php
        createModalFormFooter();
    }
}

// Feedback form
function addFeedback() {
    global $form_header;
    global $form_inputs;
    global $form_counter;
    global $form_placeholder;
    global $form_requirements;
    global $form_button_value;
    global $form_subject_options;

    createModalFormHeader("feedback"); ?>
    <a id="feedback-user"></a>
    <p class="bwc-modal-headtext"><?php echo $form_header[4]; ?></p>
    <form action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" method="post" id="feedback">
    <div id="replace-feedback">
        <p class="form-requirements"><strong><?php echo $form_requirements[1]; ?></strong></p>
        <p class="form-name"><label for="mail-feedback"><?php echo $form_inputs[0]; ?></label>
            <span class="form-input"><input type="email" id="mail-feedback" required="required" placeholder="<?php echo $form_placeholder[0]; ?>" maxlength="50" tabindex="1"/></span></p>
        <p class="form-name"><label for="feedback-subject"><?php echo $form_inputs[4]; ?></label>
            <span class="form-input">
                <select id="feedback-subject" size="1" tabindex="2">
                    <option><?php echo $form_subject_options[0]; ?></option>
                    <option><?php echo $form_subject_options[1]; ?></option>
                    <option><?php echo $form_subject_options[2]; ?></option>
                    <option><?php echo $form_subject_options[3]; ?></option>
                    <option><?php echo $form_subject_options[4]; ?></option>
                </select>
            </span>
        </p>
        <p class="form-name"><label for="message-feedback"><?php $form_inputs[5]; ?></label>
            <?php if($_SESSION['mobile'] == true) { ?>
            <span id="form-counter"><?php echo $form_counter[0]; ?></span></p>
        <?php } ?>
        <div class="form-name"><textarea maxlength="2000" placeholder="<?php echo $form_placeholder[3]; ?>" id="message-feedback" required="required" rows="4" tabindex="3"></textarea></div>
        <?php if($_SESSION['mobile'] == false) { ?>
            <p class="form-name"><span id="form-counter"><?php echo $form_counter[0]; ?></span></p>
        <?php } ?>
        <hr />
        <p class="form-error">&nbsp;</p>
        <input type="submit" class="user-button-single" id="submit-feedback" value="<?php echo $form_button_value[4] ?>" title="" />
        <div class="clearer"></div>
        </div>
    </form>
    <?php
    createModalFormFooter();
}

function addMemberForms() {
    global $form_header;
    global $form_inputs;
    global $form_img;
    global $form_placeholder;
    global $form_requirements;
    global $form_button_value;
    createModalFormHeader("avatar"); ?>
        <a id="settings-avatar-user"></a>
        <p class="bwc-modal-headtext"><?php echo $form_header[5]; ?></p>
        <form action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" method="post" enctype="multipart/form-data" id="settings-avatar">
            <div id="replace-settings-avatar">
                <div id="preview-wrapper">
                <?php if($_SESSION['user_picture'] == false) { ?>
                    <img id="preview" src="<?php echo $_SESSION['root']; ?>img/user/profile/guest.jpg" alt="default avatar image" title="<?php $form_img[0]; ?>"/>
                <?php  } else { ?>
                    <img id="preview" src="<?php echo $_SESSION['root']; ?>img/user/profile/<?php echo $_SESSION['user_name']; ?>.jpg" alt="profile picture" title="<?php $form_img[1]; ?>" />
                <?php } ?>
                </div>
                <hr /><input class="user-button-single" type="file" name="file" id="file" onchange="fileSelectHandler(150, 150)"/><hr />
                <p class="form-error">&nbsp;</p>
                <input type="hidden" id="x1" name="x1" />
                <input type="hidden" id="y1" name="y1" />
                <input type="hidden" id="x2" name="x2" />
                <input type="hidden" id="y2" name="y2" />
                <input type="hidden" id="filesize" name="filesize" />
                <input type="hidden" id="filetype" name="filetype" />
                <input type="hidden" id="filedim" name="filedim" />
                <input type="hidden" id="w" name="w" />
                <input type="hidden" id="h" name="h" />
                <?php if($_SESSION['mobile'] == true) { ?>
                    <input type="submit" value="<?php echo $form_button_value[5]; ?>" id="submit-settings-avatar" class="user-button-single" />
                <?php } else { ?>
                        <input type="submit" value="<?php echo $form_button_value[5]; ?>" id="submit-settings-avatar" class="user-button-single" />
                <?php } ?>
                <div class="clearer"></div>
                </div>
        </form>
    <?php createModalFormFooter();
    createModalFormHeader("delete"); ?>
    <a id="delete-user"></a>
    <p class="bwc-modal-headtext"><?php echo $form_inputs[6]; ?></p>
    <form action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" method="post" id="settings-delete">
        <div id="replace-settings-delete">
            <p class="form-requirements"><strong><?php echo $form_requirements[2][0] . $_SESSION['user_name'] . $form_requirements[2][1]; ?></strong></p>
            <?php if($_SESSION['mobile'] == false) { ?>
            <p class="form-requirements"><?php echo $form_requirements[3]; ?></p>
            <?php } ?>
            <hr />
            <?php if($_SESSION['mobile'] == false) { ?>
            <p class="form-requirements"><strong><?php echo $form_requirements[4]; ?></strong></p>
            <?php } ?>
            <p class="form-name"><label for="mail-delete"><?php echo $form_inputs[0]; ?></label>
                <span class="form-input"><input type="email" id="mail-delete" required="required" placeholder="<?php echo $form_placeholder[0]; ?>" maxlength="50"/></span></p>
            <p class="form-name"><label for="password-delete"><?php echo $form_inputs[1]; ?></label>
                <span class="form-input"><input type="password" id="password-delete" required="required" placeholder="<?php echo $form_placeholder[1]; ?>" maxlength="50"/></span></p>
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
            <p class="form-error">&nbsp;</p>
            <p><span class="user-button2" id="cancel-delete-account"><?php echo $form_button_value[7]; ?></span>
                <?php if($_SESSION['mobile'] == true) { echo '</p><p>'; } ?>
                <input type ="submit" class="user-button2" value="<?php echo $form_button_value[6]; ?>" />
            <div class="clearer"></div>
        </div>
    </form>
    <?php createModalFormFooter();
    createModalFormHeader("mail"); ?>
    <a id="settings-mail-user"></a>
    <p class="bwc-modal-headtext"><?php echo $form_header[6]; ?></p>
        <form action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" method="post" id="settings-mail">
            <div id="replace-settings-mail">
                <p class="form-requirements"><strong><?php echo $form_requirements[1]; ?></strong></p>
                <p class="form-name"><label for="old_mail-mail"><?php echo $form_inputs[8]; ?></label><span class="form-input">
                    <input type="email" id="old_mail-mail" class="unequal" required="required" placeholder="<?php echo $form_placeholder[4]; ?>" maxlength="50" tabindex="1" /></span></p>
                <p class="form-name"><label for=new_"mail-mail"><?php echo $form_inputs[9]; ?></label><span class="form-input">
                    <input type="email" id="new_mail-mail" class="unequal repeater" required="required" placeholder="<?php echo $form_placeholder[5]; ?>" maxlength="50" tabindex="2" /></span></p>
                <p class="form-name"><label for="repeated_mail-mail"><?php echo $form_inputs[10]; ?></label><span class="form-input">
                    <input type="email" id="repeater_mail-mail" class="repeater" required="required" placeholder="<?php echo $form_placeholder[5]; ?>" maxlength="50" tabindex="3" /></span></p>
                <p class="form-name"><label for="password-mail"><?php echo $form_inputs[1]; ?></label><span class="form-input">
                    <input type="password" id="password-mail" required="required" placeholder="<?php echo $form_placeholder[1]; ?>" maxlength="50"  tabindex="4" /></span></p>
                <hr/>
                <p class="form-error">&nbsp;</p>
                <input type="submit" class="user-button-single" id="submit-settings-mail" value="<?php echo $form_button_value[8]; ?>" />
                <div class="clearer"></div>
            </div>
        </form>
    <?php
    createModalFormFooter();
    createModalFormHeader("password");
    ?>
    <a id="settings-password-user"></a>
    <p class="bwc-modal-headtext"><?php echo $form_header[7]; ?></p>
    <form action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" method="post" id="settings-password">
        <div id="replace-settings-password">
            <p class="form-requirements"><strong><?php echo $form_requirements[1]; ?></strong></p>
            <p class="form-name"><label for="old_password-password"><?php echo $form_inputs[11]; ?></label>
                <span class="form-input"><input type="password" id="old_password-password" class="unequal" required="required" placeholder="<?php echo $form_placeholder[7]; ?>" maxlength="50" tabindex="1" /></span></p>
            <p class="form-name"><label for="new_password-password"><?php echo $form_inputs[12]; ?></label>
                <span class="form-input"><input type="password" id="new_password-password" class="unequal repeater" required="required" placeholder="<?php echo $form_placeholder[6]; ?>" maxlength="50" tabindex="2" /></span></p>
            <p class="form-name"><label for="repeated_password-password"><?php echo $form_inputs[13]; ?></label>
                <span class="form-input"><input type="password" id="repeated_password-password" class="repeater" required="required" placeholder="<?php echo $form_placeholder[6]; ?>" maxlength="50" tabindex="3" /></span></p>
            <hr/>
            <p class="form-error">&nbsp;</p>
            <input type="submit" class="user-button-single" value="<?php echo $form_button_value[8]; ?>" />
            <div class="clearer"></div>
        </div>
    </form>
    <?php createModalFormFooter();
}

function addGameMenu () {
    global $form_header;
    global $form_button_value;
    if($_SESSION['mobile'] == true) {
        createModalFormHeader("gamemenu"); ?>
        <a id="gamemenu"></a>
        <p class="bwc-modal-headtext"><?php echo $form_header[7]; ?></p><p>&nbsp;</p><p>&nbsp;</p>
        <p><input type="button" class="restart close-game user-button" value="<?php echo $form_button_value[9]; ?>" /></p>
        <p>&nbsp;</p>
        <p><input type="button" class="front close-game user-button" value="<?php echo $form_button_value[10]; ?>" /></p>
        <div class="clearer"></div>
    <?php
    createModalFormFooter();
    }
}

function addMultiplayerForm() {
    global $form_header;
    createModalFormHeader("invitation"); ?>
    <a id="invitation"></a>
    <p class="bwc-modal-headtext"><?php echo $form_header[8]; ?></p>
    <div id="replace-invitation"></div>
    <input type="hidden" class='invitation opener' />
    </div></div>
<?php
}

function openForms() { ?>
    <div id="bwc-modal-underlay">
    <?php if ($_SESSION['mobile'] == false) { ?>
        <div id="info-cloud-wrapper">
            <div class="info-input-wrapper">
                <p class="info-input"></p>
                <p class="input-status"></p>
            </div>
            <img class="info-cloud-img" alt="Info cloud for user input" title="" src="<?php echo $_SESSION['root']; ?>img/others/info-cloud.png" />
        </div>
    <?php
    }
}

function closeForms() {
    echo '</div>';
}

function init() {
    openForms();
    addLogin();
    addFeedback();
    $mainPath = $_SERVER['REQUEST_URI'];
    if(strpos($mainPath, "memberarea")) {
        addMemberForms();
    } else if(strpos($mainPath, "multiplayer")) {
        addMultiplayerForm();
    } else  {
        addGameMenu();
    }
    closeForms();
}
init();