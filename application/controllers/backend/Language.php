<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Language extends CI_Controller {
	public $arrMenu = array();
	public $data;
	public $privilege = array();
	public $section = 2; //get module group id from database
	public $module_id = 121; //get module id from database
	public $module = "Language";
	
	public function __construct()
	{
		parent::__construct();
	
		if(empty($_SESSION['admin_data'])){
			session_destroy();
			redirect(BASE_URL_BACKEND."/signin");
			exit();
		}
		
		$this->load->model(array('backend/Model_alias', 'backend/Model_language','backend/Model_logcms'));
		$this->load->helper(array('funcglobal','menu','accessprivilege','alias'));
		
		//get menu from helper menu
		$this->arrMenu = menu();
		$this->data = array();
        $this->data['ListMenu'] = $this->arrMenu;
        $this->data['CountMenu'] = count($this->arrMenu);
	
		//check privilege module
		$this->privilege = accessprivilegeuserlevel($_SESSION['admin_data']['user_level_id'], $this->module_id);
	}
	
	public function index()
	{
		$this->view();
	}
	
	function view(){
		$admin_data = $_SESSION['admin_data'];
		$this->data['admin_data'] = $admin_data;
		$this->data['section'] = $this->section; 
		$this->data['modul_id'] = $this->module_id;
		
		$searchkey = "";
		$searchby = "";
		$where = "";
		$orderBy = "";
		$perpage = "";
		
		if(isset($_POST["tbSearch"])){
			$this->session->unset_userdata(array("searchkey".$this->module_id => '', "searchby".$this->module_id => '', "perpage".$this->module_id => ''));
			
			$searchkey = $this->security->xss_clean(secure_input($_POST['searchkey']));
			$searchby = $this->security->xss_clean(secure_input($_POST['searchby']));
			$perpage = $this->security->xss_clean(secure_input($_POST['perpage']));
			
			$pesan = array();

			if ($searchkey=="") {
				$pesan[] = 'Keyword search is empty';
			} else if ($searchby=="") {
				$pesan[] = 'Search by has not been choose';
			}
			
			if (! count($pesan)==0 ) {
				foreach ($pesan as $indeks=>$pesan_tampil) {
					//$this->data['error'] = $pesan_tampil;
					$this->session->unset_userdata(array("searchkey".$this->module_id => '', "searchby".$this->module_id => '', "perpage".$this->module_id => ''));
				}
			} else {
				$this->session->set_userdata(array("searchkey".$this->module_id => $searchkey, "searchby".$this->module_id => $searchby, "perpage".$this->module_id => $perpage));

				if(isset($_POST['searchkey'])){
					$searchkey = $this->session->userdata("searchkey".$this->module_id);
				}
				if(isset($_POST['searchby'])){
					$searchby = $this->session->userdata("searchby".$this->module_id);
				}
				
				if($searchkey != "" && $searchby != ""){
					$where   =   " WHERE ".$searchby." LIKE '%". $searchkey ."%' ";
				}
			}	
		} else {
			$searchkey = $this->session->userdata("searchkey".$this->module_id);
			$searchby = $this->session->userdata("searchby".$this->module_id);
			
			if($searchkey != "" && $searchby != ""){
				$where   =   " WHERE ".$searchby." LIKE '%". $searchkey ."%' ";
			}
			
			if(isset($_POST['perpage'])){
				$perpage = $this->security->xss_clean(secure_input($_POST['perpage'])); 
				$this->session->set_userdata(array("perpage".$this->module_id => $perpage));
			} else {
				$perpage = $this->session->userdata("perpage".$this->module_id);
				
				if($perpage == ""){
					$perpage = PER_PAGE;
				}
			}
		}
		
		$orderBy = "order by language_default DESC , language_id DESC";
		
		$cond 			= $where." ".$orderBy;
		$rsUserLevel	= $this->Model_language->getListLanguage($cond);
		$base_url		= BASE_URL_BACKEND."/userlevel/view/";
		$total_rows		= count($rsUserLevel);
		$per_page		= $perpage;
		
		$this->data['paging']		= pagging($base_url , $total_rows, $per_page);
		$page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 1;
		$start = $per_page*$page - $per_page;
		if ($start<0) $start = 0;
		$cond .= " LIMIT ".$start.",".$per_page;
		$this->data["ListLanguage"] = $this->Model_language->getListLanguage($cond);
		
		$this->data['searchkey'] = $searchkey;
		$this->data['searchby'] = $searchby;
		$this->data['perpage'] = $perpage;
		
		$this->data['total'] = $total_rows;
		
		//extract privilege
		$this->data["list"] = $this->privilege[0];
		$this->data["view"] = $this->privilege[1];
		$this->data["add"] = $this->privilege[2];
		$this->data["edit"] = $this->privilege[3];
		$this->data["publish"] = $this->privilege[4];
		$this->data["approve"] = $this->privilege[5];
		$this->data["delete"] = $this->privilege[6];
		$this->data["order"] = $this->privilege[7];
		$this->data["language"] = $this->privilege[8];
		
		$this->load->view('backend/header',$this->data);
		$this->load->view('backend/language/list');
	}
	
	public function add(){
		//extract privilege
		$this->data["approve"] = $this->privilege[2];
		
		if($this->data["approve"] == 0){
			echo "<script>alert('Can\'t Access Module');window.location.href='".BASE_URL_BACKEND."/home';</script>";
			die;
		}
		
		$admin_data = $_SESSION['admin_data'];
		$this->data['admin_data'] = $admin_data;
		$this->data['section'] = $this->section; 
		$this->data['modul_id'] = $this->module_id;
		
		$this->load->view('backend/header',$this->data);
		$this->load->view('backend/language/add',$this->data);
	}
	
	public function doAdd(){
		//extract privilege
		$this->data["approve"] = $this->privilege[2];
		
		if($this->data["approve"] == 0){
			echo "<script>alert('Can\'t Access Module');window.location.href='".BASE_URL_BACKEND."/home';</script>";
			die;
		}
		
		$tb = $_POST['tbSave'];
		if (!$tb) {
			redirect(BASE_URL_BACKEND."/language");
			exit();
		}
		
		$admin_data = $_SESSION['admin_data'];
		$this->data['admin_data'] = $admin_data;
		$this->data['section'] = $this->section; 
		$this->data['modul_id'] = $this->module_id;
		
		$languagetitle = $this->security->xss_clean(secure_input($_POST['languagetitle']));
		$languageimageurl = $this->security->xss_clean(secure_input($_POST['languageimageurl']));
		
		$pesan = array();
		// Validasi data
		if ($languagetitle=="") {
			$pesan[] = 'Language Title is empty';
		} else if ($languageimageurl=="") {
			$pesan[] = 'Language Images is empty';
		} 
		
		if (! count($pesan)==0 ) {
			foreach ($pesan as $indeks=>$pesan_tampil) {
				$this->data['error'] = $pesan_tampil;
				
				$this->data['languagetitle']=$languagetitle;
				$this->data['languageimageurl']=$languageimageurl;
				
				$this->load->view('backend/header',$this->data);
				$this->load->view('backend/language/add',$this->data);
			}
		} else {
			$cekLanguage = $this->Model_language->checkLanguage($languagetitle);
			$countLanguage = count($cekLanguage);
			
			if ($countLanguage > 0 ) {
				$this->data['error']='Language Title '.$languagetitle.' already exist';
				
				$this->data['languagetitle']=$languagetitle;
				$this->data['languageimageurl']=$languageimageurl;
				
				$this->load->view('backend/header',$this->data);
				$this->load->view('backend/language/add',$this->data);
			} else {
				$languageimageurl = str_replace(BASE_URL,"",$languageimageurl);
				$languageid = $this->Model_language->insertLanguage($languagetitle,$languageimageurl);
				redirect(BASE_URL_BACKEND."/language/");
			}	
		}	
	}
	
	function active($id){
		$id = $this->security->xss_clean(secure_input($id));
		
		if (empty($id)) {
			redirect(BASE_URL_BACKEND."/language");
			exit();
		}
		
		//extract privilege
		$this->data["approve"] = $this->privilege[5];
		
		if($this->data["approve"] == 0){
			echo "<script>alert('Can\'t Access Module');window.location.href='".BASE_URL_BACKEND."/home';</script>";
			die;
		}
		
		$rsLanguage = $this->Model_language->getLanguage($id);  // mengambil database dari model untuk dikirim ke view
		$language_title = $rsLanguage[0]['language_title'];
		$active_status = abs($rsLanguage[0]['language_active_status']-1);
		
		$active = $this->Model_language->activeLanguage($id);
		
		if($active_status == 1){
			$log_module = "Active ".$this->module;
		} else {
			$log_module = "Inactive ".$this->module;
		}
		
		$log_value = $id." | ".$language_title." | ".$active_status;
		$insertlog = $this->Model_logcms->insertLogCMS($log_module,$log_value);
		
		//Cache JSON Language
		$rsLanguage			= $this->Model_language->getListLanguage(" WHERE language_active_status = 1 order by language_default DESC");
		$countLanguage		= count($rsLanguage);
		createCache($rsLanguage,"language");
		//End Cache JSON Language 
		
		redirect(BASE_URL_BACKEND."/language");
	}
	
	function delete($id){
		$id = $this->security->xss_clean(secure_input($id));
		
		if (empty($id)) {
			redirect(BASE_URL_BACKEND."/language");
			exit();
		}
		
		//extract privilege
		$this->data["delete"] = $this->privilege[6];
		
		if($this->data["delete"] == 0){
			echo "<script>alert('Can\'t Access Module');window.location.href='".BASE_URL_BACKEND."/home';</script>";
			die;
		}
		
		$rsLanguage = $this->Model_language->getLanguage($id);  // mengambil database dari model untuk dikirim ke view
		$language_title = $rsLanguage[0]['language_title'];
		
		$delete = $this->Model_language->deleteLanguage($id);
		
		$log_module = "Delete ".$this->module;
		$log_value = $id." | ".$language_title;
		$insertlog = $this->Model_logcms->insertLogCMS($log_module,$log_value);
		
		//Cache JSON Language
		$rsLanguage			= $this->Model_language->getListLanguage(" WHERE language_active_status = 1 order by language_default DESC");
		$countLanguage		= count($rsLanguage);
		createCache($rsLanguage,"language");
		//End Cache JSON Language 
		
		redirect(BASE_URL_BACKEND."/language");
	}
	
	public function edit($id){
		if (empty($id)) {
			redirect(BASE_URL_BACKEND."/language");
			exit();
		}

		//extract privilege
		$this->data["approve"] = $this->privilege[3];
		
		if($this->data["approve"] == 0){
			echo "<script>alert('Can\'t Access Module');window.location.href='".BASE_URL_BACKEND."/home';</script>";
			die;
		}
		
		$admin_data = $_SESSION['admin_data'];
		$this->data['admin_data'] = $admin_data;
		$this->data['section'] = $this->section; 
		$this->data['modul_id'] = $this->module_id;
		
		$rsLanguage = $this->Model_language->getLanguage($id);  // mengambil database dari model untuk dikirim ke view
		$countLanguage = count($rsLanguage);
		
		$this->data['rsLanguage'] = $rsLanguage;
		$this->data['countLanguage'] = $countLanguage;
		
		$this->load->view('backend/header',$this->data);
		$this->load->view('backend/language/edit',$this->data);
	}
	
	public function doEdit($id){
		$tb = $_POST['tbEdit'];
		if (!$tb OR $id == '') {
			redirect(BASE_URL_BACKEND."/language");
			exit();
		}
		
		//extract privilege
		$this->data["approve"] = $this->privilege[3];
		
		if($this->data["approve"] == 0){
			echo "<script>alert('Can\'t Access Module');window.location.href='".BASE_URL_BACKEND."/home';</script>";
			die;
		}
		
		$admin_data = $_SESSION['admin_data'];
		$this->data['admin_data'] = $admin_data;
		$this->data['section'] = $this->section; 
		$this->data['modul_id'] = $this->module_id;
		
		$rsLanguage = $this->Model_language->getLanguage($id);  // mengambil database dari model untuk dikirim ke view
		$countLanguage = count($rsLanguage);
		
		$this->data['rsLanguage'] = $rsLanguage;
		$this->data['countLanguage'] = $countLanguage;
		
		$languagetitle = $this->security->xss_clean(secure_input($_POST['languagetitle']));
		$languagetitleOld = $this->security->xss_clean(secure_input($_POST['languagetitleOld']));
		$languageimageurl = $this->security->xss_clean(secure_input($_POST['languageimageurl']));

		$pesan = array();
		// Validasi data
		if ($languagetitle=="") {
			$pesan[] = 'Language Title is empty';
		} else if ($languageimageurl=="") {
			$pesan[] = 'Language Images is empty';
		} 
		
		if (! count($pesan)==0 ) {
			foreach ($pesan as $indeks=>$pesan_tampil) {
				$this->data['error'] = $pesan_tampil;
				
				$this->data['languagetitle']=$languagetitle;
				$this->data['languageimageurl']=$languageimageurl;
				
				$this->load->view('backend/header',$this->data);
				$this->load->view('backend/language/edit',$this->data);
			}
		} else {
			$cekLanguage = $this->Model_language->checkLanguage($languagetitle);
			$countLanguage = count($cekLanguage);

			if($languagetitle == $languagetitleOld){
				$countLanguage = 0;
			}
			
			if ($countLanguage > 0 ) {
				$this->data['error']='Language Title '.$languagetitle.' already exist';
				
				$this->data['languagetitle']=$languagetitle;
				$this->data['languageimageurl']=$languageimageurl;
				
				$this->load->view('backend/header',$this->data);
				$this->load->view('backend/language/edit',$this->data);
			} else {
				$languageimageurl = str_replace(BASE_URL,"",$languageimageurl);
				$update = $this->Model_language->updateLanguage($id,$languagetitle,$languageimageurl);
				
				//Cache JSON Language
				$rsLanguage			= $this->Model_language->getListLanguage(" WHERE language_active_status = 1 order by language_default DESC");
				$countLanguage		= count($rsLanguage);
				createCache($rsLanguage,"language");
				//End Cache JSON Language 
				
				redirect(BASE_URL_BACKEND."/language/");
			}	
		}	
	}
	
	
	function defaultLang($id=''){
		$id = $this->security->xss_clean(secure_input($id));
	
		if (empty($id)) {
			redirect(BASE_URL_BACKEND."/language");
			exit();
		}
		
		//extract privilege
		$this->data["approve"] = $this->privilege[5];
		
		if($this->data["approve"] == 0){
			echo "<script>alert('Can\'t Access Module');window.location.href='".BASE_URL_BACKEND."/home';</script>";
			die;
		}
		
		$rsLanguage = $this->Model_language->getLanguage($id);  // mengambil database dari model untuk dikirim ke view
		$language_title = $rsLanguage[0]['language_title'];
		
		$default = $this->Model_language->defaultLanguage($id);
		$changedefault = $this->Model_language->defaultChangeLanguage($id);
		
		$log_module = "Default ".$this->module;
		$log_value = $id." | ".$language_title;
		$insertlog = $this->Model_logcms->insertLogCMS($log_module,$log_value);
		
		$rsDefaultLanguage = $this->Model_language->getListLanguage(" WHERE language_default = 1 order by language_default DESC"); 
		if(count($rsDefaultLanguage) < 1){
			$rsDefaultLanguage[0]['language_id'] = 0;
		}
		$_SESSION['admin_data']['language_id'] = $rsDefaultLanguage[0]['language_id'];
		
		//Cache JSON Language
		$rsLanguage			= $this->Model_language->getListLanguage(" WHERE language_active_status = 1 order by language_default DESC");
		$countLanguage		= count($rsLanguage);
		createCache($rsLanguage,"language");
		//End Cache JSON Language
		
		redirect(BASE_URL_BACKEND."/language/");
	}
}