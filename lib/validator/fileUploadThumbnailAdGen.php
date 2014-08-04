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
class sfValidatedFileAdThumbGen extends sfValidatedFile{
    public function save($file = null, $fileMode = 0666, $create = true, $dirMode = 0777) {
        
		$thumbs[]=array('dir'=>'250x', 'width'=>'250', 'height'=>'99999');

        $fileName = parent::save($file, $fileMode, $create, $dirMode);
		
		if($fileName){
			foreach($thumbs as $thumb){
				$fthumb = new sfThumbnail($thumb['width'], $thumb['height'],true,false);
				$fthumb->loadFile('uploads/ads/original/'.$fileName);
				$r = $fthumb->save('uploads/ads/'.$thumb['dir'].'/'.$fileName, 'image/jpeg');
			}
		}
		
        return $fileName;
    }
}

?>
