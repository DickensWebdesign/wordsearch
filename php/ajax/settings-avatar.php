<?php
session_start();
require_once "../connection.php";
require_once ('../../lang/en.php');

$profilePath = $_SESSION['root'] ."img/user/profile/";
$iWidth = 200;
$iWidthS = 50;
$errorWrapStart     = '<p class="form-error">';
$errorWrapEnd       = '</p>';
$error = false;
$iHeight = 200;
$iHeightS = 50;
$iJpgQuality = 90;
$vImg = NULL;
$vImgS = null;
echo '<div id="replace-settings-avatar">';
if (!$_FILES['file']['error'] && $_FILES['file']['size'] < 2000 * 2000) {
    if (is_uploaded_file($_FILES['file']['tmp_name'])) {
        $sTempFileName = $_FILES['file']['tmp_name'];
        move_uploaded_file($_FILES['file']['tmp_name'], $sTempFileName);
        @chmod($sTempFileName, 0644);
        if (file_exists($sTempFileName) && filesize($sTempFileName) > 0) {
            $aSize = getimagesize($sTempFileName); // try to obtain image info
            if (!$aSize) {
                @unlink($sTempFileName);
            }
            switch ($aSize[2]) {
                case IMAGETYPE_JPEG:
                    $sExt = '.jpg';
                    $vImg = @imagecreatefromjpeg($sTempFileName);
                    $vImgS = @imagecreatefromjpeg($sTempFileName);
                    break;
                case IMAGETYPE_PNG:
                    $sExt = '.jpg';
                    $vImg = @imagecreatefrompng($sTempFileName);
                    $vImgS = @imagecreatefrompng($sTempFileName);
                    break;
                default:
                    @unlink($sTempFileName);
            }
            $vDstImg = @imagecreatetruecolor($iWidth, $iHeight);
            imagecopyresampled($vDstImg, $vImg, 0, 0, (int)$_POST['x1'], (int)$_POST['y1'], $iWidth, $iHeight, (int)$_POST['w'], (int)$_POST['h']);
            $sResultFileName = $_SESSION['user_name'] . $sExt;
            if (file_exists($sResultFileName)) {
                @unlink($sResultFileName);
            }
            imagejpeg($vDstImg, $sResultFileName, $iJpgQuality);
            copy($sResultFileName, "../../img/user/profile/".$sResultFileName);
            @unlink($sResultFileName);
            $sResultFileName = $_SESSION['user_name'] .'-small'. $sExt;
            $vDstImgS = @imagecreatetruecolor($iWidthS, $iHeightS);
            imagecopyresampled($vDstImgS, $vImgS, 0, 0, (int)$_POST['x1'], (int)$_POST['y1'], $iWidthS, $iHeightS, (int)$_POST['w'], (int)$_POST['h']);
            imagejpeg($vDstImgS, $sResultFileName, $iJpgQuality);
            copy($sResultFileName, "../../img/user/profile/".$sResultFileName);
            @unlink($sResultFileName);
            @unlink($sTempFileName);
        } else {
            $error = $errorWrapStart .$error_return[10] . $errorWrapEnd;
        }
    }
} else {
    $error = $errorWrapStart .$error_return[11] . $errorWrapEnd;
}
if($error === false) {
    $query = "UPDATE user SET user_picture = 1 WHERE user_id = ?";
    $stmt = $db->prepare($query);
    $stmt->bind_param("i", $_SESSION['user_id']);
    if (!$stmt->execute()) {
        $error = $errorWrapStart . $error_return[12] . $errorWrapEnd;
    }
}
?>
<div id="preview-wrapper">
<?php if($error === false) { ?>
    <img id="preview" src="<?php echo $profilePath . $_SESSION['user_name']; ?>.jpg?<?php echo time(); ?>" alt="<?php echo $form_img[1]; ?>" title="<?php echo $form_img[0]; ?>"/>
<?php } else { ?>
    <img id="preview" src="<?php echo $profilePath; ?>guest.jpg" alt="<?php echo $user_img[3]; ?>" title="<?php echo $form_img[0]; ?>"/>
<?php } ?>
</div>
<hr /><input class="user-button-single" type="file" name="file" id="file" onchange="fileSelectHandler(150, 150)"/><hr />
<?php if($error !== false) { echo $error; } else { echo '<p class="form-success" id="success-green-settings-avatar">'.$form_img[2].'</p>'; } ?>
<?php if ($_SESSION['mobile'] == true) { ?>
<input type="submit" value="<?php echo $form_button_value[5]; ?>"  id="submit-settings-avatar" class="user-button-single" title="<?php echo $form_img[3]; ?>"/>
<?php } else { ?>
<input type="submit" value="<?php echo $form_button_value[5]; ?>" class="user-button-single" id="submit-settings-avatar" title="<?php echo $form_img[3]; ?>" /></p>
<?php }
if($error === false) {
    echo '<p class="form-success red-color" id="success-settings-avatar">'.$avatar[0].'<strong><span id="countdown-settings-avatar">'.$avatar[1].'</p>';
    echo '<input type="hidden" id="success-value-settings-avatar" value="'.$avatar[2].'" />';
} ?>
<div class="clearer"></div>
<input type="hidden" id="x1" name="x1" />
<input type="hidden" id="y1" name="y1" />
<input type="hidden" id="x2" name="x2" />
<input type="hidden" id="y2" name="y2" />
<input type="hidden" id="filesize" name="filesize" />
<input type="hidden" id="filetype" name="filetype" />
<input type="hidden" id="filedim" name="filedim" />
<input type="hidden" id="w" name="w" />
<input type="hidden" id="h" name="h" />
<?php
echo '</div>';
?>