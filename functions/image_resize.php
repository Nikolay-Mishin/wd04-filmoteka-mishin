<?php
function make_thumb($src, $dest, $desired_width = 100, $desired_height = 100) {
	/* read the source image */
	$source_image = imagecreatefromjpeg($src);
	$src_width = imagesx($source_image);
	$src_height = imagesy($source_image);

    $canvas = imagecreatetruecolor($desired_width, $desired_height);

    $resizedHeight = round ($src_height * ($desired_width / $src_width));
    $resizedWithd = round ($src_width * ($desired_height / $src_height));

    $centralRszX = ($resizedWithd - $desired_width) / -2;;
    $centralRszY = ($resizedHeight - $desired_height) / -2;

    if ($resizedHeight > $desired_height || $src_width == $src_height) {
        imagecopyresampled($canvas, $source_image, 0, $centralRszY, 0, 0, $desired_width, $resizedHeight, $src_width, $src_height);
        $result = imagejpeg($canvas, $dest);
    }
    else if ($resizedWithd > $desired_width) {
        imagecopyresampled($canvas, $source_image, $centralRszX, 0, 0, 0, $resizedWithd, $desired_height, $src_width, $src_height);
        $result = imagejpeg($canvas, $dest);
    }
    else {
        echo "Что-то пошло не так :(";
    }

    return $result;
}
?>