<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class Model_content extends CI_Model
{
    function __construct()
    {
        parent::__construct();
        $CI =& get_instance();
        $CI->load->model('Model_label');
    }
    function getModule($module_name)
    {
        $data  = array();
        $sql   = "select module_id , module_group_id from tbl_module where module_path='" . $module_name . "' ";
        $hasil = $this->db->query($sql);
        if ($hasil->num_rows() > 0) {
            $data = $hasil->result();
        } else {
            $data = '';
        }
        $hasil->free_result();
        $this->db->close();
        return $data;
    }
    function getListContentLanguage($cond = null)
    {
        $query = "SELECT a.language_id, a.language_title, a.language_default, a.language_active_status, 
                        b.content_id, b.content_lang_id, b.row_id
                        FROM tbl_language a
                        LEFT JOIN tbl_content_lang b ON a.language_id = b.language_id
                        " . $cond;
        $query = $this->db->query($query)->result_array();
        return $query;
    }
    function getChildContent($row_id, $label_id, $content_id, $module_id, $lang_id)
    {
        $sql   = "SELECT distinct  a.row_id,  a.row_active_status, a.row_order, a.row_alias," . " DATE_FORMAT( a.row_create_date, '%d-%m-%Y %H:%i:%s' ) as row_create_date," . " a.row_create_by " . " FROM tbl_row as a " . " inner join tbl_content as b on a.row_id = b.row_id" . " WHERE a.row_parent = $row_id and b.content_parent=$content_id";
        $query = $this->db->query($sql)->result_array();
        $data  = array();
        foreach ($query as $row) {
            $data[] = array(
                'row_id' => $row['row_id'],
                'row_order' => $row['row_order'],
                'row_alias' => $row['row_alias'],
                'row_active_status' => $row['row_active_status'],
                'row_create_date' => $row['row_create_date'],
                'content' => $this->getContent2($row['row_id'], $label_id, $content_id, $module_id,$lang_id)
            );
        }
        return $data;
    }
    function getContent2($row_id,$label_id,$content_id, $module_id,$lang_id)
    {
        $where = '';
        $label_parent = $label_id;
        $content_parent = $content_id;
        if ($row_id != '') {
            $where = "WHERE b.module_id = $module_id and b.label_parent = $label_parent ";
        }
        $sql   = "SELECT a.content_id,b.label_id,a.content_text, b.type_id, b.label_name,b.label_notif,b.label_view
                                FROM tbl_label as b 
                                LEFT JOIN tbl_content as a on a.label_id =b.label_id and a.row_id = ".$row_id." and a.content_parent=$content_parent" 
                            . " $where " . " ORDER BY b.label_order ASC";
       
        $query = $this->db->query($sql)->result_array();
        $data  = array();
                 foreach ($query as $row) {                    
                         $data[] = array(
                                'content_id' => $row['content_id'],
                                'label_id' => $row['label_id'],
                                'label_view' => $row['label_view'],
                                'type_id' => $row['type_id'],
                                'label_name' => $row['label_name'],
                                'label_notif' => $row['label_notif'],
                                'label_child' =>$this->Model_label->getChildLabel($row['label_id']),
                                'content_text' => $this->getContentLang($row_id, $row['label_id'],$lang_id,$row['content_text']) 
                            );
                      }
                    
		return $data;
    }
    function getListContent($module_id,$lang_id)
    {
        $where = '';
        if ($module_id != '') {
            $where = "WHERE a.row_parent=0 and a.module_id = " . $module_id . " order by a.row_order ASC";
        }
        $sql   = "SELECT  a.row_id,  a.row_active_status, a.row_order, a.row_alias,  " . " DATE_FORMAT( a.row_create_date, '%d-%m-%Y %H:%i:%s' ) as row_create_date," . " a.row_create_by " . "FROM tbl_row as a " . $where;
        $query = $this->db->query($sql)->result_array();
        $data  = array();
        foreach ($query as $row) {
            $data[] = array(
                'row_id' => $row['row_id'],
                'row_order' => $row['row_order'],
                'row_alias' => $row['row_alias'],
                'row_active_status' => $row['row_active_status'],
                'row_create_date' => $row['row_create_date'],
                'content' => $this->getContent($row['row_id'], 0, 0, $module_id, $lang_id)
            );
        }
        return $data;
    }
   
    function getContent($row_id, $label_id, $content_id, $module_id, $lang_id)
    {
        $where          = '';
        $label_parent   = $label_id;
        $content_parent = $content_id;
        if ($row_id != '') {
            $where = "WHERE b.module_id = $module_id and b.label_parent = $label_parent ";
        }
        $sql   = "SELECT a.content_id,b.label_id,a.content_text, b.type_id, b.label_name,b.label_notif,b.label_view
                                FROM tbl_label as b 
                                LEFT JOIN tbl_content as a on a.label_id =b.label_id and a.row_id = " . $row_id . " and a.content_parent=$content_parent" . " $where " . " ORDER BY b.label_order ASC";
        $query = $this->db->query($sql)->result_array();
        $data  = array();
        foreach ($query as $row) {
            $data[] = array(
                'content_id' => $row['content_id'],
                'label_id' => $row['label_id'],
                'label_view' => $row['label_view'],
                'type_id' => $row['type_id'],
                'label_name' => $row['label_name'],
                'label_notif' => $row['label_notif'],
                'label_child' => $this->Model_label->getChildLabel($row['label_id']),
                'content_text' => $this->getContentLang($row_id, $row['label_id'],$lang_id,$row['content_text']) 
            );
        }
//           echo '<pre>';
//                  print_r($data); 
        return $data;
    }
      function getContentLang($row_id, $label_id,$lang_id,$content){
         $where = '';
        if ($row_id != '') {
            $where = "WHERE a.language_id= $lang_id and a.row_id = $row_id and a.label_id = $label_id ";
        }
         $sql   = "SELECT a.content_text as content FROM tbl_content_lang as a ". $where;
         $query = $this->db->query($sql);
         $data = $query->row_array();  
          if($data['content'] != ''){
          return $data['content'];
            }
        return $content;
        }
    function getContentby2($row_id, $label_parent, $module_id)
    {
        $where = '';
        if ($row_id != '') {
            $where = "WHERE b.module_id = $module_id and b.label_parent = $label_parent ";
        }
        $sql   = "SELECT a.content_id,a.row_id, b.label_id, a.content_text, b.type_id,
                            b.module_id, b.label_title,b.label_name,b.label_notif, b.label_view, b.type_id, b.label_view, 
                                b.label_order, b.label_active_status, c.type_title
                                FROM tbl_label as b 
                                LEFT JOIN tbl_content as a on a.label_id =b.label_id and a.row_id = " . $row_id . " 
                                inner join tbl_label_type as c on b.type_id =c.type_id " . " $where " . " ORDER BY b.label_order ASC";
        $query = $this->db->query($sql)->result_array();
        $data  = array();
        foreach ($query as $row) {
            $data[] = array(
                'row_id' => $row['row_id'],
                'label_id' => $row['label_id'],
                'content_id' => $row['content_id'],
                'module_id' => $row['module_id'],
                'label_title' => $row['label_title'],
                'label_name' => $row['label_name'],
                'label_notif' => $row['label_notif'],
                'type_id' => $row['type_id'],
                'label_view' => $row['label_view'],
                'label_order' => $row['label_order'],
                'label_active_status' => $row['label_active_status'],
                'type_title' => $row['type_title'],
                'content_text' => $row['content_text'],
                'options' => $this->getOptions($row['label_id'], $row['type_id'])
            );
        }
        return $data;
    }
    function getListContentAlias()
    {
        $query = "SELECT content_id, content_title, content_image, content_desc,
                        DATE_FORMAT( content_create_date, '%d %M %Y' ) as content_create_date,
                        c.web_alias, c.web_ori
                        FROM tbl_content a
                        INNER JOIN tbl_alias c ON a.content_id = c.key_id 
                        WHERE a.content_active_status = 1 AND c.alias_category = 'content' AND c.alias_active_status = 1
                        ORDER BY content_id DESC";
        $query = $this->db->query($query)->result_array();
        return $query;
    }
    function getContentby($module_id, $row_id)
    {
        $where = '';
        if ($row_id != '') {
            $where = "WHERE b.module_id = $module_id and b.label_parent = 0 ";
        }
        $sql   = "SELECT a.content_id, a.row_id, b.label_id, a.content_text, b.type_id, b.module_id, b.label_title,b.label_name, b.type_id, b.label_view, b.label_notif, b.label_order, b.label_active_status, c.type_title " . "FROM tbl_label as b LEFT JOIN tbl_content as a on a.label_id =b.label_id and a.row_id = $row_id " . "inner join tbl_label_type as c on b.type_id =c.type_id " . " $where ORDER BY b.label_order ASC";
        $query = $this->db->query($sql)->result_array();
        $data  = array();
        foreach ($query as $row) {
            $data[] = array(
                'row_id' => $row['row_id'],
                'label_id' => $row['label_id'],
                'module_id' => $row['module_id'],
                'label_title' => $row['label_title'],
                'label_name' => $row['label_name'],
                'type_id' => $row['type_id'],
                'label_view' => $row['label_view'],
                'label_order' => $row['label_order'],
                'label_notif' => $row['label_notif'],
                'label_active_status' => $row['label_active_status'],
                'type_title' => $row['type_title'],
                'content_text' => $row['content_text'],
                'options' => $this->getOptions($row['label_id'], $row['type_id'])
            );
        }
        return $data;
    }
    function getOptions($label_id, $type_id)
    {
        $where = '';
        if ($label_id != '' && $type_id != '') {
            $where = "WHERE a.label_id = " . $label_id . " and a.type_id = " . $type_id;
        }
        $sql   = "SELECT a.options_id,a.label_id,a.type_id,a.options_title
                                FROM tbl_options as a " . " $where " . " ORDER BY a.label_id ASC";
        $query = $this->db->query($sql)->result_array();
        $data  = array();
        foreach ($query as $row) {
            $data[] = array(
                'options_id' => $row['options_id'],
                'label_id' => $row['label_id'],
                'type_id' => $row['type_id'],
                'options_title' => $row['options_title']
            );
        }
        return $data;
    }
    function activeRow($id)
    {
        $sql   = "UPDATE tbl_row SET row_active_status = abs(row_active_status-1),  
                   row_update_date = now(), 
                   row_update_by = " . $_SESSION['admin_data']['user_id'] . "
                   WHERE row_id = " . $id;
        $query = $this->db->query($sql);
        return $query;
    }
    function deleteRow($id = '')
    {
        $sql   = "DELETE FROM tbl_row WHERE row_id = " . $id;
        $query = $this->db->query($sql);
        $str   = $this->db->last_query();
        return $str;
    }
    function deleteContent($id = '')
    {
        $sql   = "DELETE FROM tbl_content WHERE row_id = " . $id;
        $query = $this->db->query($sql);
        $str   = $this->db->last_query();
        return $str;
    }
    function deleteLang($id = '')
    {
        $sql   = "DELETE FROM tbl_content_lang WHERE row_id = " . $id;
        $query = $this->db->query($sql);
        $str   = $this->db->last_query();
        return $str;
    }
    function insertRow($module_id, $row_parent)
    {
        $sql     = "INSERT INTO tbl_row SET 
                            row_parent='" . $row_parent . "',
                            module_id='" . $module_id . "',
                            row_create_by = " . $_SESSION['admin_data']['user_id'] . ", row_create_date = now()";
        $query   = $this->db->query($sql);
        $last_id = $this->db->insert_id();
        return $last_id;
    }
    function updateRow($row_id)
    {
        $sql   = "UPDATE tbl_row SET 
                          row_update_by = " . $_SESSION['admin_data']['user_id'] . ", " . "row_update_date = now() WHERE row_id = " . $row_id;
        $query = $this->db->query($sql);
        return $query;
    }
    function updateRowAlias($row_id, $alias)
    {
        $sql   = "UPDATE tbl_row SET 
                            row_alias = '" . $alias . "',
                          row_update_by = " . $_SESSION['admin_data']['user_id'] . ", " . "row_update_date = now() WHERE row_id = " . $row_id;
        $query = $this->db->query($sql);
        return $query;
    }
    function updateRowShow($row_id, $show_on)
    {
        $sql   = "UPDATE tbl_row SET 
                           show_on = " . $show_on . ",
                          row_update_by = " . $_SESSION['admin_data']['user_id'] . ", " . "row_update_date = now() WHERE row_id = " . $row_id;
        $query = $this->db->query($sql);
        return $query;
    }
    function updateRowPublishDate($row_id,$publish_date)

	{
		 $sql	= "UPDATE tbl_row SET 
                          publish_date ='".$publish_date."',
                          row_update_by = ".$_SESSION['admin_data']['user_id'].", "
                        . "row_update_date = now() WHERE row_id = ".$row_id;			
		$query	= $this->db->query($sql);
		return $query;

	}
        
        function updateRowCloseDate($row_id,$close_date)

	{
		 $sql	= "UPDATE tbl_row SET 
                          close_date = '".$close_date."',
                          row_update_by = ".$_SESSION['admin_data']['user_id'].", "
                        . "row_update_date = now() WHERE row_id = ".$row_id;			
		$query	= $this->db->query($sql);
		return $query;

	}
    function insertContent($content_id, $row_id, $label_id, $content_text)
    {
        $sql     = "INSERT INTO tbl_content SET 
                            content_parent='" . $content_id . "',
                            row_id='" . $row_id . "',
                            label_id='" . $label_id . "',
                            content_text='" . $content_text . "' ";
        $query   = $this->db->query($sql);
        $last_id = $this->db->insert_id();
        return $last_id;
    }
    function checkContent($content_parent, $row_id, $label_id)
    {
        $sql   = "SELECT content_text FROM tbl_content WHERE content_parent = '" . $content_parent . "' " . " and row_id = '" . $row_id . "' " . " and label_id = '" . $label_id . "'  ";
        $query = $this->db->query($sql);
        $rs    = $query->result_array();
        return $rs;
    }
    function updateContent($content_parent, $row_id, $label_id, $content_text)
    {
        $sql   = "UPDATE tbl_content SET 
                            content_parent='" . $content_parent . "',
                            content_text='" . $content_text . "'" . " WHERE label_id=$label_id and  row_id =" . $row_id;
        $query = $this->db->query($sql);
        return $query;
    }
    function updateOrdeRow($id, $order)
    {
        $sql   = "UPDATE tbl_row SET 
                   row_order= " . $order . ",
                   row_update_by = " . $_SESSION['admin_data']['user_id'] . ", row_update_date=now() WHERE row_id = " . $id;
        $query = $this->db->query($sql);
        return $query;
    }
    function updateOrderContent($id, $order)
    {
        $sql   = "UPDATE tbl_content SET 
                   content_order= " . $order . ",
                   content_update_by = " . $_SESSION['admin_data']['user_id'] . ", content_update_date=now() WHERE content_id = " . $id;
        $query = $this->db->query($sql);
        return $query;
    }
    function getRowParent($content_id)
    {
        $data  = array();
        $hasil = $this->db->query("select row_id as row_id from tbl_content where content_id = $content_id");
        $data  = $hasil->row_array();
        return $data['row_id'];
    }
    function getRow($row_id)
    {
        $data  = array();
        $hasil = $this->db->query("select row_id as row_parent from tbl_row where row_parent = $row_id ");
        $data  = $hasil->row_array();
        return $data['row_parent'];
    }
    function getContentLangby($language_id, $module_id, $row_id, $cond)
    {
        $where = '';
        if ($row_id != '') {
            $where = "WHERE a.language_id=$language_id and b.module_id = $module_id and b.label_parent = 0 ";
        }
        $sql   = "SELECT a.content_lang_id, b.label_id, a.content_text, b.type_id, b.module_id, b.label_title,b.label_name, b.type_id, b.label_view, b.label_notif, b.label_order, b.label_active_status, c.type_title " .
                "FROM tbl_label as b LEFT JOIN tbl_content_lang as a on a.label_id =b.label_id and a.row_id = $row_id " . "inner join tbl_label_type as c on b.type_id =c.type_id " . 
                " $where $cond";
        $query = $this->db->query($sql)->result_array();
        $data  = array();
        foreach ($query as $row) {
            $data[] = array(
                'label_id' => $row['label_id'],
                'module_id' => $row['module_id'],
                'label_title' => $row['label_title'],
                'label_name' => $row['label_name'],
                'type_id' => $row['type_id'],
                'label_view' => $row['label_view'],
                'label_order' => $row['label_order'],
                'label_notif' => $row['label_notif'],
                'label_active_status' => $row['label_active_status'],
                'type_title' => $row['type_title'],
                'content_text' => $row['content_text'],
                'options' => $this->getOptions($row['label_id'], $row['type_id'])
            );
        }
        return $data;
    }
    function insertContentLang($language_id,$content_id, $row_id, $label_id, $content_text)
    {
        $sql     = "INSERT INTO tbl_content_lang SET 
                            language_id='" . $language_id . "',
                            content_id='" . $content_id . "',
                            row_id='" . $row_id . "',
                            label_id='" . $label_id . "',
                            content_text='" . $content_text . "' ";
        $query   = $this->db->query($sql);
        $last_id = $this->db->insert_id();
        return $last_id;
    }
    function updateContentLang($language_id, $row_id, $label_id, $content_text)
    {
        $sql   = "UPDATE tbl_content_lang SET 
                            content_text='" . $content_text . "'" . " WHERE language_id= $language_id and label_id=$label_id and  row_id =" . $row_id;
        $query = $this->db->query($sql);
        return $query;
    }
}