<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Notfound extends MY_Controller {

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
               
		$this->load->helper(array('funcglobal','menu','accessprivilege','alias'));

                $this->data["title"]= $this->uri->segment(1);
                $this->data["controller"]= $this->uri->segment(1);
                $this->data["menu_id"]=11;
	}

	public function index()
	{
              $this->load->view('vnotfound',$this->data);
	}


}
