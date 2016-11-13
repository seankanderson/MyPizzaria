<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('results_valid'))
{
    function results_valid($results)
    {
        
		if ($results != FALSE && $results->num_rows() > 0){
			return TRUE;
		}
		return FALSE;
    }   
}

?>