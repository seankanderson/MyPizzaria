<?php 	/*			Build header values from expected variables	*/	$header_stuff['title'] = $title; 	if (isset($header_links)) $header_stuff['header_links'] = $header_links;	$this->load->view('includes/header', $header_stuff); //pass header info specific to this page	//TODO: Add other meta values and update header.php as well	/*			If we pass in a variable called 'data_array' we relay it to the view,		'data_array' may contain variables that are expected by the view, 		'results', etc...	*/	if (isset($view_stuff)){		$this->load->view($content, $view_stuff); //$content is expected, it points to another view ('blah_view')	}else {		$this->load->view($content); 	}	/*		Cough up the footer to close the html page	*/	$this->load->view('includes/footer');