<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of fileUploadThumbnailGen
 *
 * @author rainmaker11
 */
class sfValidatedFileSliderThumbGen extends sfValidatedFile{
    public function save($file = null, $fileMode = 0666, $create = true, $dirMode = 0777) {
        
		$thumbs[]=array('dir'=>'940x380', 'width'=>'940', 'height'=>'380');

        $fileName = parent::save($file, $fileMode, $create, $dirMode);
		
		if($fileName){
			foreach($thumbs as $thumb){
				//USES IMAGE MAGICK $fthumb = new sfThumbnail($thumb['width'], $thumb['height'],true,false,75,'sfImageMagickAdapter',array('method' => 'shave_all'));
				$fthumb = new sfThumbnail($thumb['width'], $thumb['height'],true,false);
				$fthumb->loadFile('photos/slider/original/'.$fileName);
				$r = $fthumb->save('photos/slider/thumbs/'.$thumb['dir'].'/'.$fileName, 'image/jpeg');
			}
		}
		
        return $fileName;
    }
}

?>
