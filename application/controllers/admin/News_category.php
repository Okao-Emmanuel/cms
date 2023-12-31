<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class News_category extends CI_Controller 
{
	function __construct() 
	{
        parent::__construct();
        $this->load->model('admin/Model_header');
        $this->load->model('admin/Model_news_category');
    }

	public function index()
	{
		$header['setting'] = $this->Model_header->get_setting_data();

		$data['news_category'] = $this->Model_news_category->show();

		$this->load->view('admin/view_header',$header);
		$this->load->view('admin/view_news_category',$data);
		$this->load->view('admin/view_footer');
	}

	public function add()
	{
		$header['setting'] = $this->Model_header->get_setting_data();

		$data['error'] = '';
		$data['success'] = '';

		if(isset($_POST['form1'])) {

			$valid = 1;

			$this->form_validation->set_rules('category_name', 'Category Name', 'trim|required');

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
		        $form_data = array(
					'category_name'    => $_POST['category_name'],
					'meta_title'       => $_POST['meta_title'],
					'meta_keyword'     => $_POST['meta_keyword'],
					'meta_description' => $_POST['meta_description']
	            );
	            $this->Model_news_category->add($form_data);

		        $data['success'] = 'News Category is added successfully!';
		    }

            $this->load->view('admin/view_header',$header);
			$this->load->view('admin/view_news_category_add',$data);
			$this->load->view('admin/view_footer');
            
        } else {
            
            $this->load->view('admin/view_header',$header);
			$this->load->view('admin/view_news_category_add',$data);
			$this->load->view('admin/view_footer');
        }
		
	}


	public function edit($id)
	{
		
    	// If there is no new category in this id, then redirect
    	$tot = $this->Model_news_category->news_category_check($id);
    	if(!$tot) {
    		redirect(base_url().'admin/news-category');
        	exit;
    	}
       	
       	$header['setting'] = $this->Model_header->get_setting_data();
		$data['error'] = '';
		$data['success'] = '';
		$error = '';


		if(isset($_POST['form1'])) 
		{

			$valid = 1;

			$this->form_validation->set_rules('category_name', 'Category Name', 'trim|required');

			if($this->form_validation->run() == FALSE) {
				$valid = 0;
                $data['error'] = validation_errors();
            } else {

            	// Duplicate category Checking
            	$data['news_category'] = $this->Model_news_category->getData($id);
            	$total = $this->Model_news_category->duplicate_check($_POST['category_name'],$data['news_category']['category_name']);
		    	if($total) {
		    		$valid = 0;
		        	$data['error'] = 'Category name already exists';
		    	}
            }

			if(PROJECT_MODE == 0) {
				$valid = 0;
				$data['error'] = PROJECT_NOTIFICATION;
			}

		    if($valid == 1) 
		    {
		    	// Updating Data
	    		$form_data = array(
					'category_name'    => $_POST['category_name'],
					'meta_title'       => $_POST['meta_title'],
					'meta_keyword'     => $_POST['meta_keyword'],
					'meta_description' => $_POST['meta_description']
	            );
	            $this->Model_news_category->update($id,$form_data);
				
				$data['success'] = 'Category Name is updated successfully';
		    }

		    $data['news_category'] = $this->Model_news_category->getData($id);
	       	$this->load->view('admin/view_header',$header);
			$this->load->view('admin/view_news_category_edit',$data);
			$this->load->view('admin/view_footer');
           
		} else {
			$data['news_category'] = $this->Model_news_category->getData($id);
			$this->load->view('admin/view_header',$header);
			$this->load->view('admin/view_news_category_edit',$data);
			$this->load->view('admin/view_footer');
		}

	}


	public function delete($id) 
	{
		// If there is no designation in this id, then redirect
    	$tot = $this->Model_news_category->news_category_check($id);
    	if(!$tot) {
    		redirect(base_url().'admin/news-category');
        	exit;
    	}

		if(PROJECT_MODE == 0) {
			redirect(base_url().'admin/news-category');
		}

    	$result = $this->Model_news_category->getData1($id);
		foreach ($result as $row) {			
			unlink('./public/uploads/'.$row['photo']);
			unlink('./public/uploads/'.$row['banner']);
		}
        $this->Model_news_category->delete($id);
		$this->Model_news_category->delete1($id);

        redirect(base_url().'admin/news-category');
    }

}