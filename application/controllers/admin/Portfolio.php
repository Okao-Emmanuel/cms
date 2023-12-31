<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Portfolio extends CI_Controller 
{
	function __construct() 
	{
        parent::__construct();
        $this->load->model('admin/Model_header');
        $this->load->model('admin/Model_portfolio');
    }

	public function index()
	{
		$header['setting'] = $this->Model_header->get_setting_data();

		$data['portfolio'] = $this->Model_portfolio->show();

		$this->load->view('admin/view_header',$header);
		$this->load->view('admin/view_portfolio',$data);
		$this->load->view('admin/view_footer');
	}

	public function add()
	{
		$header['setting'] = $this->Model_header->get_setting_data();

		$data['error'] = '';
		$data['success'] = '';
		$error = '';

		if(isset($_POST['form1'])) {

			$valid = 1;

			$this->form_validation->set_rules('name', 'Name', 'trim|required');
			$this->form_validation->set_rules('short_content', 'Short Content', 'trim|required');
			$this->form_validation->set_rules('content', 'Content', 'trim|required');

			if($this->form_validation->run() == FALSE) {
				$valid = 0;
                $error .= validation_errors();
            }

            $path = $_FILES['photo']['name'];
		    $path_tmp = $_FILES['photo']['tmp_name'];

		    if($path!='') {
		        $ext = pathinfo( $path, PATHINFO_EXTENSION );
		        $file_name = basename( $path, '.' . $ext );
		        $ext_check = $this->Model_header->extension_check_photo($ext);
		        if($ext_check == FALSE) {
		            $valid = 0;
		            $error .= 'You must have to upload jpg, jpeg, gif or png file for featured photo<br>';
		        }
		    } else {
		    	$valid = 0;
		        $error .= 'You must have to select a photo for featured photo<br>';
		    }

		    $path1 = $_FILES['banner']['name'];
		    $path_tmp1 = $_FILES['banner']['tmp_name'];

		    if($path1!='') {
		        $ext1 = pathinfo( $path1, PATHINFO_EXTENSION );
		        $file_name1 = basename( $path1, '.' . $ext1 );
		        $ext_check1 = $this->Model_header->extension_check_photo($ext1);
		        if($ext_check1 == FALSE) {
		            $valid = 0;
		            $error .= 'You must have to upload jpg, jpeg, gif or png file for banner<br>';
		        }
		    } else {
		    	$valid = 0;
		        $error .= 'You must have to select a photo for banner<br>';
		    }

			if(PROJECT_MODE == 0) {
				$valid = 0;
				$error = PROJECT_NOTIFICATION;
			}

		    if($valid == 1) 
		    {
				$next_id = $this->Model_portfolio->get_auto_increment_id();
				foreach ($next_id as $row) {
		            $ai_id = $row['Auto_increment'];
		        }

		        $final_name = 'portfolio-'.$ai_id.'.'.$ext;
		        move_uploaded_file( $path_tmp, './public/uploads/'.$final_name );

		        $final_name1 = 'portfolio-banner-'.$ai_id.'.'.$ext1;
		        move_uploaded_file( $path_tmp1, './public/uploads/'.$final_name1 );

		        $form_data = array(
					'name'             => $_POST['name'],
					'short_content'    => $_POST['short_content'],
					'content'          => $_POST['content'],
					'client_name'      => $_POST['client_name'],
					'client_company'   => $_POST['client_company'],
					'start_date'       => $_POST['start_date'],
					'end_date'         => $_POST['end_date'],
					'website'          => $_POST['website'],
					'cost'             => $_POST['cost'],
					'client_comment'   => $_POST['client_comment'],
					'category_id'      => $_POST['category_id'],
					'photo'            => $final_name,
					'banner'           => $final_name1,
					'meta_title'       => $_POST['meta_title'],
					'meta_keyword'     => $_POST['meta_keyword'],
					'meta_description' => $_POST['meta_description']
	            );
	            $this->Model_portfolio->add($form_data);


	            if( isset($_FILES['photos']["name"]) && isset($_FILES['photos']["tmp_name"]) )
		        {
		            $photos = array();
		            $photos = $_FILES['photos']["name"];
		            $photos = array_values(array_filter($photos));

		            $photos_temp = array();
		            $photos_temp = $_FILES['photos']["tmp_name"];
		            $photos_temp = array_values(array_filter($photos_temp));

		            $next_id1 = $this->Model_portfolio->get_auto_increment_id1();
					foreach ($next_id1 as $row1) {
			            $ai_id1 = $row1['Auto_increment'];
			        }

		            $z = $ai_id1;

		            $m=0;
		            $final_names = array();
		            for($i=0;$i<count($photos);$i++)
		            {

		            	$ext = pathinfo( $photos[$i], PATHINFO_EXTENSION );
				        $ext_check = $this->Model_header->extension_check_photo($ext);
				        if($ext_check == FALSE) {
				        	// Nothing to do, just skip
				        } else {
				        	$final_names[$m] = $z.'.'.$ext;
		                    move_uploaded_file($photos_temp[$i],"./public/uploads/portfolio_photos/".$final_names[$m]);
		                    $m++;
		                    $z++;
				        }
		            }
		        }

		        for($i=0;$i<count($final_names);$i++)
		        {
		        	$form_data = array(
						'portfolio_id' => $ai_id,
						'photo'        => $final_names[$i]
		            );
		            $this->Model_portfolio->add_photos($form_data);
		        }


		        $data['success'] = 'Portfolio is added successfully!';

		        unset($_POST['name']);
				unset($_POST['short_content']);
				unset($_POST['content']);
				unset($_POST['client_name']);
				unset($_POST['client_company']);
				unset($_POST['start_date']);
				unset($_POST['end_date']);
				unset($_POST['website']);
				unset($_POST['cost']);
				unset($_POST['client_comment']);
				unset($_POST['meta_title']);
				unset($_POST['meta_keyword']);
				unset($_POST['meta_description']);
		    } 
		    else
		    {
		    	$data['error'] = $error;
		    }

		    $data['all_photo_category'] = $this->Model_portfolio->get_all_photo_category();
            $this->load->view('admin/view_header',$header);
			$this->load->view('admin/view_portfolio_add',$data);
			$this->load->view('admin/view_footer');
            
        } else {
            $data['all_photo_category'] = $this->Model_portfolio->get_all_photo_category();
            $this->load->view('admin/view_header',$header);
			$this->load->view('admin/view_portfolio_add',$data);
			$this->load->view('admin/view_footer');
        }
		
	}


	public function edit($id)
	{
		
    	// If there is no service in this id, then redirect
    	$tot = $this->Model_portfolio->portfolio_check($id);
    	if(!$tot) {
    		redirect(base_url().'admin/portfolio');
        	exit;
    	}
       	
       	$header['setting'] = $this->Model_header->get_setting_data();
		$data['error'] = '';
		$data['success'] = '';
		$error = '';


		if(isset($_POST['form1'])) 
		{

			$valid = 1;

			$this->form_validation->set_rules('name', 'Name', 'trim|required');
			$this->form_validation->set_rules('short_content', 'Short Content', 'trim|required');
			$this->form_validation->set_rules('content', 'Content', 'trim|required');

			if($this->form_validation->run() == FALSE) {
				$valid = 0;
                $error .= validation_errors();
            }

            $path = $_FILES['photo']['name'];
		    $path_tmp = $_FILES['photo']['tmp_name'];

		    if($path!='') {
		        $ext = pathinfo( $path, PATHINFO_EXTENSION );
		        $file_name = basename( $path, '.' . $ext );
		        $ext_check = $this->Model_header->extension_check_photo($ext);
		        if($ext_check == FALSE) {
		            $valid = 0;
		            $error .= 'You must have to upload jpg, jpeg, gif or png file for featured photo<br>';
		        }
		    }

		    $path1 = $_FILES['banner']['name'];
		    $path_tmp1 = $_FILES['banner']['tmp_name'];

		    if($path1!='') {
		        $ext1 = pathinfo( $path1, PATHINFO_EXTENSION );
		        $file_name1 = basename( $path1, '.' . $ext1 );
		        $ext_check1 = $this->Model_header->extension_check_photo($ext1);
		        if($ext_check1 == FALSE) {
		            $valid = 0;
		            $error .= 'You must have to upload jpg, jpeg, gif or png file for banner<br>';
		        }
		    }

			if(PROJECT_MODE == 0) {
				$valid = 0;
				$error = PROJECT_NOTIFICATION;
			}

		    if($valid == 1) 
		    {
		    	$data['portfolio'] = $this->Model_portfolio->getData($id);

		    	if($path == '' && $path1 == '') {
		    		$form_data = array(
						'name'             => $_POST['name'],
						'short_content'    => $_POST['short_content'],
						'content'          => $_POST['content'],
						'client_name'      => $_POST['client_name'],
						'client_company'   => $_POST['client_company'],
						'start_date'       => $_POST['start_date'],
						'end_date'         => $_POST['end_date'],
						'website'          => $_POST['website'],
						'cost'             => $_POST['cost'],
						'client_comment'   => $_POST['client_comment'],
						'category_id'      => $_POST['category_id'],
						'meta_title'       => $_POST['meta_title'],
						'meta_keyword'     => $_POST['meta_keyword'],
						'meta_description' => $_POST['meta_description']
		            );
		            $this->Model_portfolio->update($id,$form_data);
				}
				if($path != '' && $path1 == '') {
					unlink('./public/uploads/'.$data['portfolio']['photo']);

					$final_name = 'portfolio-'.$id.'.'.$ext;
		        	move_uploaded_file( $path_tmp, './public/uploads/'.$final_name );

		        	$form_data = array(
						'name'             => $_POST['name'],
						'short_content'    => $_POST['short_content'],
						'content'          => $_POST['content'],
						'client_name'      => $_POST['client_name'],
						'client_company'   => $_POST['client_company'],
						'start_date'       => $_POST['start_date'],
						'end_date'         => $_POST['end_date'],
						'website'          => $_POST['website'],
						'cost'             => $_POST['cost'],
						'client_comment'   => $_POST['client_comment'],
						'category_id'      => $_POST['category_id'],
						'photo'            => $final_name,
						'meta_title'       => $_POST['meta_title'],
						'meta_keyword'     => $_POST['meta_keyword'],
						'meta_description' => $_POST['meta_description']
		            );
		            $this->Model_portfolio->update($id,$form_data);
				}
				if($path == '' && $path1 != '') {
					unlink('./public/uploads/'.$data['portfolio']['banner']);

					$final_name1 = 'portfolio-banner-'.$id.'.'.$ext1;
		        	move_uploaded_file( $path_tmp1, './public/uploads/'.$final_name1 );

		        	$form_data = array(
						'name'             => $_POST['name'],
						'short_content'    => $_POST['short_content'],
						'content'          => $_POST['content'],
						'client_name'      => $_POST['client_name'],
						'client_company'   => $_POST['client_company'],
						'start_date'       => $_POST['start_date'],
						'end_date'         => $_POST['end_date'],
						'website'          => $_POST['website'],
						'cost'             => $_POST['cost'],
						'client_comment'   => $_POST['client_comment'],
						'category_id'      => $_POST['category_id'],
						'banner'           => $final_name1,
						'meta_title'       => $_POST['meta_title'],
						'meta_keyword'     => $_POST['meta_keyword'],
						'meta_description' => $_POST['meta_description']
		            );
		            $this->Model_portfolio->update($id,$form_data);
				}
				if($path != '' && $path1 != '') {

					unlink('./public/uploads/'.$data['portfolio']['photo']);
					unlink('./public/uploads/'.$data['portfolio']['banner']);

					$final_name = 'portfolio-'.$id.'.'.$ext;
		        	move_uploaded_file( $path_tmp, './public/uploads/'.$final_name );

					$final_name1 = 'portfolio-banner-'.$id.'.'.$ext1;
		        	move_uploaded_file( $path_tmp1, './public/uploads/'.$final_name1 );

		        	$form_data = array(
						'name'             => $_POST['name'],
						'short_content'    => $_POST['short_content'],
						'content'          => $_POST['content'],
						'client_name'      => $_POST['client_name'],
						'client_company'   => $_POST['client_company'],
						'start_date'       => $_POST['start_date'],
						'end_date'         => $_POST['end_date'],
						'website'          => $_POST['website'],
						'cost'             => $_POST['cost'],
						'client_comment'   => $_POST['client_comment'],
						'category_id'      => $_POST['category_id'],
						'photo'            => $final_name,
						'banner'           => $final_name1,
						'meta_title'       => $_POST['meta_title'],
						'meta_keyword'     => $_POST['meta_keyword'],
						'meta_description' => $_POST['meta_description']
		            );
		            $this->Model_portfolio->update($id,$form_data);
				}

				if( isset($_FILES['photos']["name"]) && isset($_FILES['photos']["tmp_name"]) )
		        {
		            $photos = array();
		            $photos = $_FILES['photos']["name"];
		            $photos = array_values(array_filter($photos));

		            $photos_temp = array();
		            $photos_temp = $_FILES['photos']["tmp_name"];
		            $photos_temp = array_values(array_filter($photos_temp));

		            $next_id1 = $this->Model_portfolio->get_auto_increment_id1();
					foreach ($next_id1 as $row1) {
			            $ai_id1 = $row1['Auto_increment'];
			        }

		            $z = $ai_id1;

		            $m=0;
		            $final_names = array();
		            for($i=0;$i<count($photos);$i++)
		            {

		            	$ext = pathinfo( $photos[$i], PATHINFO_EXTENSION );
				        $ext_check = $this->Model_header->extension_check_photo($ext);
				        if($ext_check == FALSE) {
				        	// Nothing to do, just skip
				        } else {
				        	$final_names[$m] = $z.'.'.$ext;
		                    move_uploaded_file($photos_temp[$i],"./public/uploads/portfolio_photos/".$final_names[$m]);
		                    $m++;
		                    $z++;
				        }
		            }
		        }

		        for($i=0;$i<count($final_names);$i++)
		        {
		        	$form_data = array(
						'portfolio_id' => $id,
						'photo'        => $final_names[$i]
		            );
		            $this->Model_portfolio->add_photos($form_data);
		        }

				$data['success'] = 'Portfolio is updated successfully';
		    }
		    else
		    {
		    	$data['error'] = $error;
		    }

		    $data['portfolio'] = $this->Model_portfolio->getData($id);
		    $data['all_photo_category'] = $this->Model_portfolio->get_all_photo_category();
		    $data['all_photos_by_id'] = $this->Model_portfolio->get_all_photos_by_category_id($id);
	       	$this->load->view('admin/view_header',$header);
			$this->load->view('admin/view_portfolio_edit',$data);
			$this->load->view('admin/view_footer');
           
		} else {
			$data['portfolio'] = $this->Model_portfolio->getData($id);
			$data['all_photo_category'] = $this->Model_portfolio->get_all_photo_category();
			$data['all_photos_by_id'] = $this->Model_portfolio->get_all_photos_by_category_id($id);
	       	$this->load->view('admin/view_header',$header);
			$this->load->view('admin/view_portfolio_edit',$data);
			$this->load->view('admin/view_footer');
		}

	}


	public function delete($id) 
	{
		// If there is no portfolio in this id, then redirect
    	$tot = $this->Model_portfolio->portfolio_check($id);
    	if(!$tot) {
    		redirect(base_url().'admin/portfolio');
        	exit;
    	}

		if(PROJECT_MODE == 0) {
			redirect(base_url().'admin/portfolio');
		}

        $data['portfolio'] = $this->Model_portfolio->getData($id);
        if($data['portfolio']) {
            unlink('./public/uploads/'.$data['portfolio']['photo']);
            unlink('./public/uploads/'.$data['portfolio']['banner']);
        }

        $portfolio_photos = $this->Model_portfolio->get_all_photos_by_category_id($id);
        foreach($portfolio_photos as $row) {
			unlink('./public/uploads/portfolio_photos/'.$row['photo']);
        }

        $this->Model_portfolio->delete($id);
        $this->Model_portfolio->delete_photos($id);

        redirect(base_url().'admin/portfolio');
    }

    public function single_photo_delete($photo_id=0,$portfolio_id=0) {

		if(PROJECT_MODE == 0) {
			redirect(base_url().'admin/portfolio/edit/'.$portfolio_id);
		}

  		$portfolio_photo = $this->Model_portfolio->portfolio_photo_by_id($photo_id);
  		unlink('./public/uploads/portfolio_photos/'.$portfolio_photo['photo']);

  		$this->Model_portfolio->delete_portfolio_photo($photo_id);

  		redirect(base_url().'admin/portfolio/edit/'.$portfolio_id);

    }

}