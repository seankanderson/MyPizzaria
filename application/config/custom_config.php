<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');$config['link_options_basic'] = 'data-role="button" data-theme="a" data-transition="slide"';$config['link_options_back'] = 'data-role="button" data-icon="back" data-theme="a" data-transition="slide" data-iconpos="left"';$config['link_menu_basic'] = 'data-role="button" data-theme="a" data-iconpos="right" data-transition="slide" data-icon="arrow-r"';$config['link_menu_add'] = 'data-role="button" data-theme="a" data-iconpos="left" data-transition="slide" data-icon="plus"';$config['submit_button_basic'] = 'data-icon="arrow-r" data-iconpos="right" data-theme="a"';$config['link_mini_icon'] = 'data-role="button" data-iconpos="notext"';$config['link_div_control'] = 'data-role="button" data-icon="minus" data-mini="true" data-inline="true"';$config['table_edit_basic'] = 'data-role="button" data-theme="c" data-iconpos="left" data-transition="slide" data-icon="grid" data-mini="true"';$config['table_add_basic'] = 'data-role="button" data-theme="c" data-iconpos="left" data-transition="slide" data-icon="plus" data-mini="true"';$config['table_style'] = '<style type="text/css"> table {width: 100%; border-collapse:collapse;} table,th, td {text-align: left; border-bottom: 1px solid gray;} th, td {padding: 0 0 10px 1em; } th {background: #bababa; color:black; text-shadow: none; padding-top: 10px;} tr:hover {background: #efefef;} </style>';$config['no_javascript'] = 'js/nojs.html';$config['error_report_link'] = '<a href="http://datavirtue.com" data-role="button" data-mini="true" >Data Virtue 2013</a>';$config['protocol'] = 'smtps';$config['email_from'] = "From: New Market Pizza <manager@newmarketpizza.com>\r\n";$config['host'] = 'gator790.hostgator.com';$config['port'] = '465';$config['user'] = 'noreply@datavirtue.com';$config['pass'] = 'shift2enter';$config['from_addr'] = 'noreply@datavirtue.com';$config['from_name'] = 'MyPizzeriaOnline.com';$config['conf_subject'] = 'MyPizzeria Password Confirmation';$config['reset_subject'] = 'MyPizzeria Password Reset';$config['default_city'] = 'Hillsboro';$config['default_state'] = 'OH';$config['default_zip'] = '45133';$config['ticket_key'] = "3c6e0b8a9c15224a8228b9a98ca1531d";/* Permissions  */$config['customer'] = 1; //default: customer (1)$config['change_menu'] = 5; //default: manager (5)$config['change_promos'] = 5;$config['change_orders'] = 4; //default: supervisor (4)$config['delete_orders'] = 5; //default: manager (5)$config['print_orders'] = 2; //default: cook (2)$config['view_reports'] = 5; //default: manager (5)$config['change_hours'] = 5; //default: manager (5)$config['change_users'] = 4; //default: super (4)$config['send_map'] = 2; //default: cook (2)