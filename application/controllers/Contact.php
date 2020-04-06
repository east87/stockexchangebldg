<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');class Contact extends MY_Controller {	public $arrMenu = array();	public $data = array();	public $privilege = array();	public function __construct()	{		parent::__construct();                if(! $_SESSION)                {                    session_start();                }               		$this->load->model(array('backend/Model_menu_frontend','web/Model_label','web/Model_content'));		$this->load->helper(array('funcglobal','menu','accessprivilege','alias','text'));                $this->data["module_id"]='';                $this->data["menu_id"]='7';                                               $this->data["module_header"]=131;                $this->data["module_page"]=136;                $this->data["module_subpage"]= '';                $string =$this->data["module_header"].','.$this->data["module_page"].','.$this->data["module_subpage"];                $arrayin=array_map('intval', explode(',', $string));                 $this->data["where_in"] = implode(",",$arrayin);                $this->data['now'] = date("Y-m-d");	           	}        public function language()	{		$id = $this->uri->segment(2);		$_SESSION['language'] = $id;		if(isset($_SERVER['HTTP_REFERER'])) {                $_SERVER['HTTP_REFERER'];}               		if(empty($_SERVER['HTTP_REFERER'])){			$direct = BASE_URL.'/home';		} else {			$direct = $_SERVER['HTTP_REFERER'];		}		redirect($direct);	}        	public function index()	{            $this->data["page_title"]=$this->lang->line("contact");                        $ListHeader =array();            $ListPage =array();            $ListSubPage =array();                            $order_limit='';                $order_limit .= " order by a.row_order ASC";                                $whereContent = '';                $label_page =1;                $whereContent .= " WHERE a.row_active_status=1 and a.row_active_status=1 and a.row_parent=0 and a.module_id in(".$this->data["where_in"].") ";                               $ListContent = $this->Model_content->getListContent($whereContent,$order_limit,$label_page);                                foreach ($ListContent as $lc){                    if ($lc['module_id']== $this->data["module_header"]){                      $ListHeader[]=$lc;                     }                     else if ($lc['module_id']== $this->data["module_page"]){                      $ListPage[]=$lc;                      }                    else if ($lc['module_id']== $this->data["module_subpage"]){                      $ListSubPage[]=$lc;                      }                }                              $this->data["countHeader"] = count($ListHeader);		$this->data["ListHeader"] = $ListHeader;                $this->data["countPage"] = count($ListPage);		$this->data["ListPage"] = $ListPage;                $this->data["countSubPage"] = count($ListSubPage);		$this->data["ListSubPage"] = $ListSubPage;               //echo '<pre>';              //print_r($ListPage);            $this->load->view('vcontact',$this->data);	}    function postMsg()    {        if (isset($_POST['g-recaptcha-response']) && !empty($_POST['g-recaptcha-response'])) {            $secret         = SECRET_KEY;            $verifyResponse = file_get_contents('https://www.google.com/recaptcha/api/siteverify?secret=' . $secret . '&response=' . $_POST['g-recaptcha-response']);            $enquiry           = $this->security->xss_clean(trim($_POST['contact_enquiry']));            $name           = $this->security->xss_clean(trim($_POST['contact_name']));            $email          = $this->security->xss_clean(trim($_POST['contact_email']));            $phone        = $this->security->xss_clean(trim($_POST['contact_phone']));            $message        = $this->security->xss_clean(trim($_POST['contact_message']));            $subject       = 'Contact Us';            $message_email  = '<h1>Contact Form ' . $name . '</h1><br/>';            $message_email .= '<p>From</p>';            $message_email .= 'Name : ' . $name . '<br/>';            $message_email .= 'Enquiry : ' . $enquiry . '<br/>';            $message_email .= 'Phone : ' . $phone . '<br/>';            $message_email .= 'Email : ' . $email . ' <br/>';            $message_email .= 'Messages : ' . $message . ' <br/>';                        $config = [            'mailtype'  => 'html',            'charset'   => 'utf-8',            'protocol'  => 'smtp',            'smtp_host' => 'smtp.gmail.com',            'smtp_user' => 'noreplay.fji@gmail.com',  // Email gmail            'smtp_pass'   => 'n0Rep.Fji',  // Password gmail            'smtp_crypto' => 'ssl',            'smtp_port'   => 465,            'crlf'    => "\r\n",            'newline' => "\r\n"        ];        // Load library email dan konfigurasinya            $this->load->library('email', $config);            $this->email->to(MAIL_CONT);            $this->email->cc(MAIL_CC);            $this->email->from(MAIL_CAT , 'fji Contact');            $this->email->subject($subject);            $this->email->message($message_email);            if ($this->email->send()) {               return true;                 $result = 1;            } else {                $result = 'check_captcha';            }                                }                 echo json_encode($result);    }	}