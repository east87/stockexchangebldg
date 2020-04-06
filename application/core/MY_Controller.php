<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends CI_Controller {
	public $data = array();

	public function __construct() {
		parent::__construct();
		
		$language_id = @$_SESSION['language'];
		if(empty($language_id)){
			$_SESSION['language'] = LANG_DEF;
		}
		
		if($_SESSION['language'] == 1){
			$this->lang->load("site","english");
		} else {
			$this->lang->load("site","indonesia");
		}
	
		//language
		$pathLanguage = PATH_ASSETS."/json/language.json";
		$arrLanguage = json_decode(file_get_contents($pathLanguage),TRUE);
		
		$this->data['countdataLanguage'] = count($arrLanguage);
		$this->data['dataLanguage'] = $arrLanguage;
		
		$ismobile = FALSE;
		if ($this->agent->is_mobile()){
			$ismobile = TRUE;
		}
		$this->data['ismobile'] = $ismobile;
		
	}
}
?>