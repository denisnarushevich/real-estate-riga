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
class sfValidatedFileThumbGen extends sfValidatedFile{
    public function save($file = null, $fileMode = 0666, $create = true, $dirMode = 0777) {
        
		$thumbs[]=array('dir'=>'210x140', 'width'=>'210', 'height'=>'140');
		$thumbs[]=array('dir'=>'x120', 'width'=>'1200', 'height'=>'120');
		$thumbs[]=array('dir'=>'226x', 'width'=>'226', 'height'=>'226');
		$thumbs[]=array('dir'=>'670x', 'width'=>'670','height'=>'670');
		

        $fileName = parent::save($file, $fileMode, $create, $dirMode);
		
		if($fileName){
			foreach($thumbs as $thumb){
				$fthumb = new sfThumbnail($thumb['width'], $thumb['height'],true,false);
				$fthumb->loadFile('photos/property/original/'.$fileName);
				$r = $fthumb->save('photos/property/thumbs/'.$thumb['dir'].'/'.$fileName, 'image/jpeg');
			}
		}
		
        return $fileName;
    }
}

?>
