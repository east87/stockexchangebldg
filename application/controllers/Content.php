<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Content extends MY_Controller {

	public $arrMenu = array();
	public $data;
	public $privilege = array();
	public function __construct()

	{
		parent::__construct();
                if(! $_SESSION)
                {
                    session_start();
                }
               
		$this->load->model(array('backend/Model_menu_frontend','web/Model_label','web/Model_content'));
		$this->load->helper(array('funcglobal','menu','accessprivilege','alias'));

                $this->data["title"]= $this->uri->segment(1);
                 $this->data["controller"]= $this->uri->segment(1);
	}

	public function index()
	{
              $this->load->view('v'.$this->data['controller'].'_'.$_SESSION['language'],$this->data);
	}


}
