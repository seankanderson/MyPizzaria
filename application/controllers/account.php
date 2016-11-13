<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Account extends CI_Controller {
	function __contruct(){
		parent::__construct();
		$this->load->helper('common_db');
	}
	function index(){
		$this->login();	
	}
	/*  
		URL - <Default> Calling the Account controller should land you at the login view
	*/	
	function login(){
		$data = array (
			'title'=>'Login',
			'content'=>'acct/acct_login_view' // acct_login_view should post to validate()
		);
		$this->load->view('includes/template', $data);
	}
	/*
		URL - Sends the user to 'acct_create_view'
	*/	
	function new_account(){
		$data = array (
			'title'=>'New Account',
			'content'=>'acct/acct_create_view' // acct_login_view should post to validate()
		);
		$this->load->view('includes/template', $data);
	}
	/*
		URL - Called from confirmation email link using a GET request
	*/
	function reset_account($verify=FALSE){
		$reset_value = $this->input->get('id');
		$email_address = $this->input->get('email');
		$this->load->model('acct_model');
		$results = $this->acct_model->get_account($email_address);
		if ($results != FALSE && $results->num_rows() > 0){
			$row = $results->row();
			if ($row->email_address == $email_address && $row->reset == $reset_value){
				//$record = array (
				//	'email_address'=>$email_address,
				//	'reset'=>'OK'
				//);
				//$this->load->model('acct_model');
				//$results = $this->acct_model->update_account($record);
				//if ($results) {
					if ($verify){
						$data = array(
							'name' => $row->name,
							'logged_in' => true,
							'email_address'=>$row->email_address
						);
						$this->session->set_userdata($data);
						redirect('welcome');					
					}else{
						$data = array (
						'title'=>'User Account Password Reset',
						'content'=>'acct/acct_pw_reset_view', //the view needs 'reset_value' for this reset procedure to work
						'view_stuff'=>array('email_address'=>$email_address, 'reset_value'=>$reset_value)
						);
					}
					$this->load->view('includes/template', $data);
				//}
			}
		}	
	}
	/* 
		This method takes form data from 'acct_pw_reset_view'	
	*/
	function reset_password(){
		// Validate the incomming form data
		$this->load->library('form_validation');
		$this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[4]|max_length[32]');
		$this->form_validation->set_rules('password_confirmation', 'Password Confirmation', 'trim|required|matches[password]');
		// Bounce the user back and report errors.
		if ($this->form_validation->run() == FALSE) {
			$data = array (
			'title'=>'User Password Reset',
			'content'=>'acct/acct_pw_reset_view' // acct_login_view should post to validate()
			);
			$this->load->view('includes/template', $data);
			return;
		}
		// Collect POST data.
		$new_pw = $this->input->post('password');
		$new_pw_confirm = $this->input->post('password_confirmation');
		$email_address = $this->input->post('email_address');
		$logged_in_reset = FALSE;
		if (isset($current_password)){
				$logged_in_reset = TRUE;
		}
		$this->load->model('acct_model');
		if ($this->input->post('reset_value') != NULL){ // Reset for incoming email requests
			// Get account info from the submitted email address
			$results = $this->acct_model->get_account($email_address);
			if ($results){
				// Get name and reset status value
				$row = $results->row();
				$name = $row->name;
				$reset = $row->reset;
			}else {
				//problem - Send them back to the  view
				$data = array (
					'title'=>'Fatal Error',
					'content'=>'acct/acct_pw_reset_view', //the view
					'view_stuff'=>array('problem'=>'There was a problem accessing the database using the information from the password reset function.')
				);
				$this->load->view('includes/template', $data);
				return;
			}
			// Compare the value of the reset form value and the one in the database
			if ($reset == $this->input->post('reset_value')){
				// Update the database to reflect the new password and clear the reset value
				$data = array(
					'email_address'=>$email_address,
					'password'=>md5($new_pw),
					'reset'=>'OK'
				);
				$results = $this->acct_model->update_account($data);
				if ($results){
					// Log them in automagically after the database successfully updates!
					$data = array(
					'name' => $row->name,
					'logged_in' => true,
					'email_address'=>$row->email_address
					);
					$this->session->set_userdata($data);
					redirect('welcome');
				}else { // Problem updating the database, send them back to the view
					$data = array (
					'title'=>'Fatal Error',
					'content'=>'acct/acct_pw_reset_view', //the view
					'view_stuff'=>array('problem'=>'There was a problem recording the user account information.')
					);
					$this->load->view('includes/template', $data);
					return;
				}
			}
		}else { //Reset for those who are logged in
			//didnt check old password
			$results = $this->acct_model->get_account($email_address);
			if ($results){
				$row = $results->row();
				$stored_pw = $row->password;
				$current_password = md5($this->input->post('current_password'));
				if ($stored_pw != $current_password){
					$data = array (
						'title'=>'Bad Password',
						'content'=>'acct/acct_pw_reset_view', //the view
						'view_stuff'=>array('problem'=>'Wrong Password.')
					);
					//echo '<script type="text/javascript">window.alert("Wrong Password")</script>';
					$this->load->view('includes/template', $data);
					return;			
				}
				// Kick them back if new passwords do not confirm, why isn't the form validation working
				if ($new_pw != $new_pw_confirm){
					$data = array (
						'title'=>'Bad Password',
						'content'=>'acct/acct_pw_reset_view', //the view
						'view_stuff'=>array('problem'=>'New passwords do not match.')
					);
					$this->load->view('includes/template', $data);
					return;			
				}
				$data = array (
					'email_address'=>$email_address,
					'password'=>md5($new_pw)				
				);
				$results = $this->acct_model->update_account($data);
				if ($results){
					redirect('welcome');
				}else {
					$data = array (
					'title'=>'Fatal Error',
					'content'=>'acct/acct_pw_reset_view', //the view
					'view_stuff'=>array('problem'=>'There was a problem recording the user account information.')
					);
					$this->load->view('includes/template', $data);
				}
			}else {
				//possible script abuse!
				$data = array (
					'title'=>'Fatal Error',
					'content'=>'acct/acct_pw_reset_view', //the view
					'view_stuff'=>array('problem'=>'Account was not found.')
					);
					$this->load->view('includes/template', $data);
			}
		}
	}
	/*
		URL - Loads 'acct_reset_view' 
	*/
	function reset(){
		$data = array (
			'title'=>'User Account Reset',
			'content'=>'acct/acct_reset_view' // acct_login_view should post to validate()
		);
		$this->load->view('includes/template', $data);
	}
	/*  
		URL - Password reset for logged in users
	*/
	function change_password(){
		//if reset_value isset() then procede, otherwise check for a session?
		$data = array (
			'title'=>'User Account Password Reset',
			'content'=>'acct/acct_pw_reset_view' // acct_login_view should post to validate()
		);
		$this->load->view('includes/template', $data);	
	}
	/*
		FORM POST - From 'acct_reset_view'
		Updates the database and tries to send an
		email containing the reset value embedded link.
	*/
	function send_pw_reset(){
		// Validate the form data
		$this->load->library('form_validation');
		$this->form_validation->set_rules('email_address', 'Email Address', 'trim|required|valid_email');
		$form_valid = $this->form_validation->run();
		if (!$form_valid){
			$data = array (
			'title'=>'User Account Reset',
			'content'=>'acct/acct_reset_view' //the view
			);
			$this->load->view('includes/template', $data);
			return;
		}
		// Get on with it
		$this->load->model('acct_model');
		$results = $this->acct_model->get_account($this->input->post('email_address'));
		if ($results == FALSE || $results->num_rows() < 1){
			$data = array (
			'title'=>'User Account Reset',
			'content'=>'acct/acct_reset_view', //the view
			'view_stuff'=>array('problem'=>"No account with that email address exists.")
			);
			$this->load->view('includes/template', $data);
			return;
		}
		$row = $results->row(); //hopefully there is only one row, moving on...
		$name = $row->name;
		$db_email = $row->email_address;
		$reset_value = md5($db_email.time());
		$reset_link = "https://datavirtue.com/CI_210_Base/index.php/account/reset_account?id=".$reset_value."&email=".$db_email;
		// Send the email and populate database with the 'reset_value' sent
		$message = "Hi ".$name.",\r\nPlease follow this link or copy and paste it into your browser to reset your account.\r\n".$reset_link."\r\n If you are not ".$name." please disregard this email.";
		$subject = "Data Virtue Account Reset Request";
		$to = $db_email;
		if ($this->_send_verification_email($message, $to, $subject)) {
			$data = array(
				'email_address'=>$db_email,
				'reset'=>$reset_value				
			);
			$this->acct_model->update_account($data);
			$data = array (
			'title'=>'Request Sent',
			'content'=>'acct/acct_request_sent_view', //the view
			'view_stuff'=>array('message'=>"The request was sent, please check your email.")
			);
			$this->load->view('includes/template', $data);
		}else {
			//email failed, go back to 'acct_reset_view'
			$data = array (
			'title'=>'User Account Reset',
			'content'=>'acct/acct_reset_view', //the view
			'view_stuff'=>array('problem'=>"For some reason the account reactivation email failed to send, try again.")
			);
			$this->load->view('includes/template', $data);
		}
	}
	function _send_verification_email($message, $to, $subject){
		$config = array(
			'protocol'=>'smtps',
			'smtp_host'=>'gator790.hostgator.com',
			'smtp_port'=>'465',
			'smtp_user'=>'noreply@datavirtue.com',
			'smtp_pass'=>'shift2enter'
		);
		$this->load->library('email', $config);
		$this->email->set_newline('\r\n');
			//send the email
			$this->email->from("noreply@datavirtue.com", "Data Virtue");
			$this->email->to($to);
			$this->email->subject($subject);
			$this->email->message($message);
			// Send the email and populate database with the 'reset_value' sent
			if ($this->email->send()) {
				return true;
			}
			return false;
	}
	/*
		FORM POST - From 'acct_login_view
	*/
	function validate_account(){
		// Validate the form data
		$this->load->library('form_validation');
		$this->form_validation->set_rules('email_address', 'Email Address', 'trim|required|valid_email');
		$this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[4]|max_length[32]');
		$form_valid = $this->form_validation->run();
		if (!$form_valid){
			$data = array (
			'title'=>'User Account Login',
			'content'=>'acct/acct_login_view' //the view
			);
			$this->load->view('includes/template', $data);
		}
		// Collect the form data
		$email = $this->input->post('email_address');
		$password = $this->input->post('password');
		// Call acct_model to get record
		$this->load->model('acct_model');
		$results = $this->acct_model->get_account($email);
		// Compare credentials
		if ($results != FALSE && $results->num_rows() > 0){
			$row = $results->row();
			$db_password = $row->password;
			$reset_status = $row->reset;
			$password = md5($password);
			if ($password == $db_password && $reset_status == "OK"){
				// Create Session, create flash message, and redirect to welcome
				$data = array(
					'name' => $row->name,
					'logged_in' => true,
					'email_address'=>$row->email_address
				);
				$this->session->set_userdata($data);
				redirect('welcome');
			}else {
				$data = array (
				'title'=>'User Account Login',
				'content'=>'acct/acct_login_view', //the view
				'view_stuff'=>array('problem'=>'The password is wrong or the account is in reset status. Try sending another reset request.')
				);
			$this->load->view('includes/template', $data);
			return;
			}
			//fallthrough 
		}
		$data = array (
			'title'=>'User Account Login',
			'content'=>'acct/acct_login_view', //the view 
			'view_stuff'=> array('problem'=>"The account does not exist.")
			);
			$this->load->view('includes/template', $data);
		// Set $problem and reload acct_login_view
	}
	/* 
		FORM POST - From 'acct_create_view'
		Tries to create an account.
	*/
	function create(){
		$this->load->library('form_validation');
		$this->form_validation->set_rules('name', 'Name', 'trim|required');
		$this->form_validation->set_rules('email_address', 'Email', 'trim|required|valid_email');
		$this->form_validation->set_rules('email_confirmation', 'Email Confirmation', 'trim|requiredmatches[email_address]');
		$this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[4]|max_length[32]');
		$this->form_validation->set_rules('password_confirmation', 'Password Confirmation', 'trim|required|matches[password]');
		if ($this->form_validation->run() == FALSE) {
			$data = array (
				'title'=>'Create User Account',			
				'content'=>'acct/acct_create_view'			
			);
			$this->load->view('includes/template', $data);
		}else {
			$this->load->model('acct_model');
			//no duplicate accounts!!
			$results = $this->acct_model->get_account($this->input->post('email_address'));
			if ($results || $results->num_rows() > 0) {
				$data = array (			
					'title'=>'User Account NOT Created',			
					'content'=>'acct/acct_create_view',
					'view_stuff'=>array('problem'=>'That email address is already in use with another account.')
				);
				$this->load->view('includes/template', $data);
				return;
			}
			//create the account
			$reset_value = md5($this->input->post('email_address').time());
			$user = array(
				'id'=>NULL,
				'name'=>$this->input->post('name'),
				'email_address'=>$this->input->post('email_address'),
				'password'=>md5($this->input->post('password')),
				'reset'=>$reset_value
			);
			$results = $this->acct_model->insert_account($user);
			if (!$results){
				$data = array (			
					'title'=>'User Account NOT Created',			
					'content'=>'acct/acct_created_view',
					'view_stuff'=>array('problem'=>'The account information was not recorded in the data base. Contact: <a href="mailto:software@datavirtue.com">software@datavirtue.com</a>')
				);
				$this->load->view('includes/template', $data);
				return;
			}
			$to = $user['email_address'];
			$subject = "Data Virtue User Account Verification";
			$reset_link ='https://datavirtue.com/CI_210_Base/index.php/account/verify_account?id='.$reset_value.'&email='.$user['email_address'];
			$message = "Hi ".$user['name'].",\r\nPlease follow this link or copy and paste it into your browser to verify your account.\r\n".$reset_link."\r\n If you are not ".$user['name']." please disregard this email.";
			if ($this->_send_verification_email($message, $to, $subject)){
				$data = array (			
					'title'=>'User Account Created',			
					'content'=>'acct/acct_created_view',
					'email_address'=>$to
				);
				$this->load->view('includes/template', $data);
			}else {
				$data = array (			
					'title'=>'User Account Created',			
					'content'=>'acct/acct_created_view',
					'view_stuff'=>array('problem'=>'The verification email was not sent. Contact: <a href="mailto:software@datavirtue.com">software@datavirtue.com</a>')
				);
				$this->load->view('includes/template', $data);
			}
		}
	}			
	/*
		Called from account verification link sent in email.
	*/
	function verify_account(){
		$this->reset_account(TRUE);
	}
	function logout(){
		if ($this->session->userdata('logged_in')){
			$this->session->unset_userdata('name');
			$this->session->unset_userdata('email_address');
			$this->session->unset_userdata('logged_in');
		}
		redirect('welcome');
	}
}
?>