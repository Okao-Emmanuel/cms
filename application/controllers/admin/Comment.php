<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Comment extends CI_Controller 
{
	function __construct() 
	{
        parent::__construct();
        $this->load->model('admin/Model_header');
        $this->load->model('admin/Model_comment');
    }

	public function index()
	{
       	
       	$header['setting'] = $this->Model_header->get_setting_data();
		$data['error'] = '';
		$data['success'] = '';
		$error = '';

		if(isset($_POST['form1'])) 
		{

			$valid = 1;

			$this->form_validation->set_rules('code_body', 'Comment Body Code', 'trim|required');

			if($this->form_validation->run() == FALSE) {
				$valid = 0;
                $data['error'] = validation_errors();
            }

			if(PROJECT_MODE == 0) {
				$valid = 0;
				$data['error'] = PROJECT_NOTIFICATION;
			}
            
		    if($valid == 1) 
		    {
		    	$data['comment'] = $this->Model_comment->show();

	    		$form_data = array(
					'code_body'  => $_POST['code_body']
	            );
	            $this->Model_comment->update($form_data);
				
				$data['success'] = 'Comment Body Code is updated successfully';
		    }

		    $data['comment'] = $this->Model_comment->show();
	       	$this->load->view('admin/view_header',$header);
			$this->load->view('admin/view_comment',$data);
			$this->load->view('admin/view_footer');
           
		} else {
			$data['comment'] = $this->Model_comment->show();
	       	$this->load->view('admin/view_header',$header);
			$this->load->view('admin/view_comment',$data);
			$this->load->view('admin/view_footer');
		}

	}


}