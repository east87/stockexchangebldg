<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tenant extends MY_Controller {

	public $arrMenu = array();
	public $data = array();
	public $privilege = array();
	public function __construct()

	{
		parent::__construct();
                if(! $_SESSION)
                {
                    session_start();
                }
               
		$this->load->model(array('backend/Model_menu_frontend','web/Model_label','web/Model_content'));
		$this->load->helper(array('funcglobal','menu','accessprivilege','alias','text'));
                $this->data["module_id"]='';
                $this->data["menu_id"]='5';
               
                
                $this->data["module_header"]=134;
                $this->data["module_page"]=142;
                $this->data["module_subpage"]=135;
                $string =$this->data["module_header"].','.$this->data["module_page"].','.$this->data["module_subpage"];
                $arrayin=array_map('intval', explode(',', $string));
                 $this->data["where_in"] = implode(",",$arrayin);
                $this->data['now'] = date("Y-m-d");
	
           
	}
        public function language()
	{
		$id = $this->uri->segment(2);
		$_SESSION['language'] = $id;
		if(isset($_SERVER['HTTP_REFERER'])) {
                $_SERVER['HTTP_REFERER'];
}
               
		if(empty($_SERVER['HTTP_REFERER'])){
			$direct = BASE_URL.'/home';
		} else {
			$direct = $_SERVER['HTTP_REFERER'];
		}
		redirect($direct);
	}
        
	public function index()
	{
            $this->data["page_title"]=$this->lang->line("tenant");
            
            $ListHeader =array();
            $ListPage =array();
            $ListSubPage =array();
            
                $order_limit='';
                $order_limit .= " order by a.row_order ASC";
                
                $whereContent = '';
                $label_page =1;
                $whereContent .= " WHERE a.row_active_status=1 and a.row_active_status=1 and a.row_parent=0 and a.module_id in(".$this->data["where_in"].") ";
               
                $ListContent = $this->Model_content->getListContent($whereContent,$order_limit,$label_page);
                
                foreach ($ListContent as $lc){
                    if ($lc['module_id']== $this->data["module_header"]){
                      $ListHeader[]=$lc; 
                    }
                     else if ($lc['module_id']== $this->data["module_page"]){
                      $ListPage[]=$lc;  
                    }
                    else if ($lc['module_id']== $this->data["module_subpage"]){
                      $ListSubPage[]=$lc;  
                    }
                }
              
                $this->data["countHeader"] = count($ListHeader);
		$this->data["ListHeader"] = $ListHeader;
                $this->data["countPage"] = count($ListPage);
		$this->data["ListPage"] = $ListPage;
                $this->data["countSubPage"] = count($ListSubPage);
		$this->data["ListSubPage"] = $ListSubPage;
//               echo '<pre>';
//             print_r($ListSubPage);
            $this->load->view('vtenant',$this->data);
	}
	
	
}