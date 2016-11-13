<?php 

	/* This snippet forces the page to load in https. 
		If the user tried to load the url with http, a redirect 
		is issued to the same url with https prepended instead.
	*/
	$ssl = $_SERVER['HTTPS'];

	if ($_SERVER['HTTPS']=="" || !isset($_SERVER['HTTPS']) || $_SERVER['HTTPS']=="off") {
	
		header ("location: https://datavirtue.com".$_SERVER['PHP_SELF']);

	}
?>


<!DOCTYPE html> 
<html> 
	<head> 
	<title><?php echo $title; ?></title> 
	
	<meta name="viewport" content="width=device-width, initial-scale=1"> 

	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.css" />
	<script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
	<script language=javascript> $(document).bind("mobileinit", function (){ $.extend($.mobile ,{ajaxEnabled: false});});</script>
	<script src="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.js"></script>
	<script src="<?php echo base_url();?>js/util.js"></script>
	<?php if (isset($header_links)) echo $header_links; ?>
	
</head> 

<body>

<div data-role="page"> 
	<div data-role="header" onload="scrollTo(0,1);"><h1>MyPizzeria!</h1></div> 
		<div data-role="content">

	