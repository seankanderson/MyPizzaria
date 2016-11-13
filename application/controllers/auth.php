<?phpdefined('BASEPATH') OR exit('No direct script access allowed');class Auth extends CI_Controller {    function __construct() {	parent::__construct();	$this->load->library('ion_auth');	$this->load->library('session');	$this->load->database();	$this->load->helper('url');    }    //redirect if needed, otherwise display the user list    function index() {	if (!$this->ion_auth->logged_in()) {	    //redirect them to the login page	    redirect('auth/login', 'refresh');	} elseif (!$this->ion_auth->is_admin()) {	    //redirect them to the home page because they must be an administrator to view this	    redirect($this->config->item('base_url'), 'refresh');	} else {	    //set the flash data error message if there is one	    $this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');	    //list the users	    $this->data['users'] = $this->ion_auth->users()->result();	    foreach ($this->data['users'] as $k => $user) {		$this->data['users'][$k]->groups = $this->ion_auth->get_users_groups($user->id)->result();	    }	    $this->load->view('auth/index', $this->data);	}    }    //log the user in    function login() {	$this->data['title'] = "Login";	//validate form input	$this->form_validation->set_rules('identity', 'Identity', 'required');	$this->form_validation->set_rules('password', 'Password', 'required');	if ($this->form_validation->run() == true) { //check to see if the user is logging in	    //check for "remember me"	    $remember = (bool) $this->input->post('remember');	    if ($this->ion_auth->login($this->input->post('identity'), $this->input->post('password'), $remember)) { //if the login is successful		//redirect them back to the home page		$this->session->set_flashdata('message', $this->ion_auth->messages());		$customer = FALSE;		$supervisor = FALSE;		$manager = FALSE;		$owner = FALSE;		if ($this->ion_auth->in_group('customers'))		    $role = 1;		if ($this->ion_auth->in_group('cooks'))		    $role = 2;		if ($this->ion_auth->in_group('drivers'))		    $role = 3;		if ($this->ion_auth->in_group('supervisors'))		    $role = 4;		if ($this->ion_auth->in_group('managers'))		    $role = 5;		if ($this->ion_auth->in_group('owners'))		    $role = 6;		/* User permissions! */		/* Most session data is set in ion_auth_model->login */		$this->session->set_userdata('permission', $role);		if ($role > 1) {		    redirect($this->config->item('site_url') . 'manager/dashboard', 'refresh');		} else {		    redirect($this->config->item('site_url') . 'order/start_order', 'refresh');		}	    } else { //if the login was un-successful		//redirect them back to the login page		$this->session->set_flashdata('message', $this->ion_auth->errors());		redirect($this->config->item('site_url') . 'order/login', 'refresh'); //use redirects instead of loading views for compatibility with MY_Controller libraries	    }	} else {  //the user is not logging in so display the login page	    //set the flash data error message if there is one	    $this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');	    $this->data['identity'] = array('name' => 'identity',		'id' => 'identity',		'type' => 'text',		'value' => $this->form_validation->set_value('identity'),	    );	    $this->data['password'] = array('name' => 'password',		'id' => 'password',		'type' => 'password',	    );	    redirect(site_url('order/login'));	}    }    //log the user out    function logout() {	$this->data['title'] = "Logout";	//log the user out	$logout = $this->ion_auth->logout();	//redirect them back to the page they came from	redirect('auth', 'refresh');    }    //change password    function change_password() {	$this->form_validation->set_rules('old', 'Old password', 'required');	$this->form_validation->set_rules('new', 'New Password', 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[new_confirm]');	$this->form_validation->set_rules('new_confirm', 'Confirm New Password', 'required');	if (!$this->ion_auth->logged_in()) {	    redirect('auth/login', 'refresh');	}	$user = $this->ion_auth->user()->row();	if ($this->form_validation->run() == false) { //display the form	    //set the flash data error message if there is one	    $this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');	    $this->data['min_password_length'] = $this->config->item('min_password_length', 'ion_auth');	    $this->data['old_password'] = array(		'name' => 'old',		'id' => 'old',		'type' => 'password',	    );	    $this->data['new_password'] = array(		'name' => 'new',		'id' => 'new',		'type' => 'password',		'pattern' => '^.{' . $this->data['min_password_length'] . '}.*$',	    );	    $this->data['new_password_confirm'] = array(		'name' => 'new_confirm',		'id' => 'new_confirm',		'type' => 'password',		'pattern' => '^.{' . $this->data['min_password_length'] . '}.*$',	    );	    $this->data['user_id'] = array(		'name' => 'user_id',		'id' => 'user_id',		'type' => 'hidden',		'value' => $user->id,	    );	    //render	    $this->load->view('auth/change_password', $this->data);	} else {	    $identity = $this->session->userdata($this->config->item('identity', 'ion_auth'));	    $change = $this->ion_auth->change_password($identity, $this->input->post('old'), $this->input->post('new'));	    if ($change) { //if the password was successfully changed		$this->session->set_flashdata('message', $this->ion_auth->messages());		$this->logout();	    } else {		$this->session->set_flashdata('message', $this->ion_auth->errors());		redirect('auth/change_password', 'refresh');	    }	}    }    function forgot_password() {	$this->form_validation->set_rules('email', 'Email Address', 'required');	if ($this->form_validation->run() == false) {	    $this->data['email'] = array('name' => 'email',		'id' => 'email',	    );	    //set any errors and display the form	    $this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');	    $data = array(		'title' => 'Reset Password',		'content' => 'order/order_pwreset_view', //the view	    );	    $this->load->view('includes/template', $data);	    return;	} else {	    //run the forgotten password method to email an activation code to the user	    $forgotten = $this->ion_auth->forgotten_password($this->input->post('email'));	    if ($forgotten) { //if there were no errors		$this->session->set_flashdata('message', $this->ion_auth->messages());		redirect(site_url('order/login')); //we should display a confirmation page here instead of the login page	    } else {		/* $this->session->set_flashdata('message', $this->ion_auth->errors());		  $data = array (		  'title'=>'Reset Password',		  'content'=>'order/order_pwreset_view', //the view		  );		  $this->load->view('includes/template', $data);		  return; */	    }	}    }    //reset password - final step for forgotten password    public function reset_password($code) {	$user = $this->ion_auth->forgotten_password_check($code);	if ($user) {  //if the code is valid then display the password reset form	    $this->form_validation->set_rules('new', 'New Password', 'required|min_length[' . $this->config->item('min_password_length', 'ion_auth') . ']|max_length[' . $this->config->item('max_password_length', 'ion_auth') . ']|matches[new_confirm]');	    $this->form_validation->set_rules('new_confirm', 'Confirm New Password', 'required');	    if ($this->form_validation->run() == false) {//display the form		//set the flash data error message if there is one		$this->data['message'] = (validation_errors()) ? validation_errors() : $this->session->flashdata('message');		$this->_get_csrf_nonce();		$csrf = $this->_get_csrf_nonce();		$d = array(		    'title' => 'Set Password ',		    'content' => 'order/order_setpw_view',		    'view_stuff' => array('user_id' => $user->id, 'csrf' => $csrf, 'code' => $code)		);		$this->load->view('includes/template', $d);			    } else {		// do we have a valid request?		if ($this->_valid_csrf_nonce() === FALSE || $user->id != $this->input->post('user_id')) {		    //something fishy might be up		    $this->ion_auth->clear_forgotten_password_code($code);		    show_404();		} else {		    // finally change the password		    $identity = $user->{$this->config->item('identity', 'ion_auth')};		    $change = $this->ion_auth->reset_password($identity, $this->input->post('new'));		    if ($change) { //if the password was successfully changed			$this->session->set_flashdata('message', $this->ion_auth->messages());			redirect(site_url('order/login'));		    } else {			$this->session->set_flashdata('message', $this->ion_auth->errors());			redirect('auth/reset_password/' . $code, 'refresh');		    }		}	    }	} else { //if the code is invalid then send them back to the forgot password page	    $this->session->set_flashdata('message', $this->ion_auth->errors());	    redirect(site_url('order/forgot_pw'));	}    }    //activate the user    function activate($id, $code = false) {	if ($code !== false)	    $activation = $this->ion_auth->activate($id, $code);	else if ($this->ion_auth->is_admin())	    $activation = $this->ion_auth->activate($id);	if ($activation) { //SUCCESS	    //redirect them to the auth page	    $this->session->set_flashdata('message', $this->ion_auth->messages());	    redirect(site_url() . '/order/login/');	} else { //FAIL	    //redirect them to the forgot password page	    $this->session->set_flashdata('message', $this->ion_auth->errors());	    $data = array(		'title' => 'Activation Failure',		'content' => 'order/order_problem_view',		'problem' => 'The user email activation failed.',		'custom_link' => '<a href="' . site_url("/order/user_reset") . '"' . $this->config->config('link_options_basic') . ' ></a>'	    );	    $this->load->view('includes/template', $data);	    return;	}    }    //deactivate the user    function deactivate($id = NULL) {	// no funny business, force to integer	$id = (int) $id;	$this->load->library('form_validation');	$this->form_validation->set_rules('confirm', 'confirmation', 'required');	$this->form_validation->set_rules('id', 'user ID', 'required|is_natural');	if ($this->form_validation->run() == FALSE) {	    // insert csrf check	    $this->data['csrf'] = $this->_get_csrf_nonce();	    $this->data['user'] = $this->ion_auth->user($id)->row();	    $this->load->view('auth/deactivate_user', $this->data);	} else {	    // do we really want to deactivate?	    if ($this->input->post('confirm') == 'yes') {		// do we have a valid request?		if ($this->_valid_csrf_nonce() === FALSE || $id != $this->input->post('id')) {		    show_404();		}		// do we have the right userlevel?		if ($this->ion_auth->logged_in() && $this->ion_auth->is_admin()) {		    $this->ion_auth->deactivate($id);		}	    }	    //redirect them back to the auth page	    redirect('auth', 'refresh');	}    }    //create a new user    function create_user() {	$this->data['title'] = "Create User";	$this->load->library('form_validation');	$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');	$this->form_validation->set_rules('password', 'Password', 'required');	$this->form_validation->set_rules('phone', 'Phone Number', 'required');	$this->form_validation->set_rules('carrier', 'Cell Carrier', 'trim');	$this->form_validation->set_rules('twitter', 'Twitter', 'trim');	$this->form_validation->set_rules('company', 'Company', 'trim');	$this->form_validation->set_rules('first_name', 'Name', 'required');	$this->form_validation->set_rules('street', 'Street Address', 'required');	$this->form_validation->set_rules('addr2', 'Alt Address', 'trim');	$this->form_validation->set_rules('city', 'City', 'required');	$this->form_validation->set_rules('state', 'State', 'required');	$this->form_validation->set_rules('zip', 'Zip Code', 'required');	$this->form_validation->set_rules('location', 'Store Location', 'required');	if ($this->form_validation->run() == true) {	    $username = strtolower($this->input->post('first_name')) . ' ' . strtolower($this->input->post('last_name'));	    $email = $this->input->post('email');	    $password = $this->input->post('password');	    $user_data = array(		'username' => $this->input->post('username'),		'email' => $this->input->post('email'),		'password' => $this->input->post('password'),		'first_name' => $this->input->post('first_name'),		'twitter' => $this->input->post('twitter'),		'company' => $this->input->post('company'),		'phone' => $this->input->post('phone'),		'carrier' => $this->input->post('carrier'),		'street' => $this->input->post('street'),		'address_2' => $this->input->post('addr2'),		'city' => $this->input->post('city'),		'state' => $this->input->post('state'),		'postal_code' => $this->input->post('zip'),		'location' => $this->input->post('location')	    );	    $reg = $this->ion_auth->register($user_data);	    if ($reg) {		$this->db->where('email', $email);		$user = $this->db->get('users');		$row = $user->row();		$user_id = $row->id;	    }	}	if ($this->form_validation->run() == true && $user_id && $reg) { //check to see if we are creating the user	    //redirect them back to the admin page	    $this->session->set_flashdata('message', "User Created");	    $this->session->set_userdata('confirm', 'yes');	    //call method that sends confirmation email.	    //pass in 	    redirect(site_url('order/user_confirmation?id=' . $user_id));	} else { //display the create user form	    $this->data['message'] = (validation_errors() ? validation_errors() : ($this->ion_auth->errors() ? $this->ion_auth->errors() : $this->session->flashdata('message')));	    $locations = $this->order_model->get_locations();	    $field_values = array(		'email' => $this->form_validation->set_value('email'),		'first_name' => $this->form_validation->set_value('first_name'),		'twitter' => $this->form_validation->set_value('twitter'),		'company' => $this->form_validation->set_value('company'),		'phone' => $this->form_validation->set_value('phone'),		'carrier' => $this->form_validation->set_value('carrier'),		'street' => $this->form_validation->set_value('street'),		'addr2' => $this->form_validation->set_value('addr2'),		'city' => $this->form_validation->set_value('city'),		'state' => $this->form_validation->set_value('state'),		'zip' => $this->form_validation->set_value('zip'),		'location' => $this->form_validation->set_value('location'),		'locations' => $locations	    );	    $d = array(		'title' => 'Signup',		'content' => 'order/order_signup_view',		'view_stuff' => $field_values	    );	    $this->load->view('includes/template', $d);	}    }    function _get_csrf_nonce() {	$this->load->helper('string');	$key = random_string('alnum', 8);	$value = random_string('alnum', 20);	$this->session->set_flashdata('csrfkey', $key);	$this->session->set_flashdata('csrfvalue', $value);	return array($key => $value);    }    function _valid_csrf_nonce() {	if ($this->input->post($this->session->flashdata('csrfkey')) !== FALSE &&		$this->input->post($this->session->flashdata('csrfkey')) == $this->session->flashdata('csrfvalue')) {	    return TRUE;	} else {	    return FALSE;	}    }}