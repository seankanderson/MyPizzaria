<?php$order_id = $this->session->userdata('order_id');$user_id = $this->session->userdata('user_id');$role = $this->session->userdata('permission');if (!isset($role) || $role < 1) {    redirect(site_url('/order/login'));}?><?phpif ($toppings_table == 'menu_pizza_toppings')    $type = 'Pizza';if ($toppings_table == 'menu_sand_toppings')    $type = 'Sandwich';$combo_top_prices = $this->session->userdata('current_item_combo');$top_price = $this->session->userdata('current_item_top_price');$item_name = $this->session->userdata('current_item_name');$std_top = $this->session->userdata('std_toppings');if ($std_top < 1)    unset($std_top);if (isset($std_top)) { //a manager is here selecting std toppings    $combo_top_prices = FALSE;    $top_price = 0;    $item_name = $item_name . ' (Menu Edit)';}?><img style="position:absolute; left:25px; top:5px;" src="<?php base_url(); ?>/images/mario.64.png" /><div class="ui-bar ui-bar-e"><h2><?php echo $type; ?> Toppings  >>  <?php echo $item_name; ?></h2></div> <?phpif (isset($toppings)) {    foreach ($toppings->result() as $topping) {	$name = $topping->topping_name;	$price = $topping->price;	if ($combo_top_prices == TRUE)	    $price = $price + $top_price;	if (!isset($std_top)) {	    echo '<form action="' . site_url('order/add_topping') . '" method="post">';	    echo '<input type="hidden" name="topping" value="' . $name . '"/>';	    echo '<input type="hidden" name="price" value="' . $price . '"/>';	    echo '<input type="hidden" name="table" value="' . $toppings_table . '"/>';	    echo '<input type="hidden" name="half" value="X"/>';	    echo '<input type="submit" name="submit" value="' . $name . ' ' . '$' . $price . '"/>';	    echo '</form>';	    //echo '<a href="'.site_url('order/add_topping').'?topping='.$name.'&price='.$price.'&half=X'.'&table='.$toppings_table.'"'.$this->config->config['link_menu_add'].'>'.$name.'   $'.$price.'</a>';					} else {	    echo '<form action="' . site_url('order/save_std_topping') . '" method="post">';	    echo '<input type="hidden" name="topping" value="' . $name . '"/>';	    echo '<input type="hidden" name="id" value="' . $std_top . '"/>';	    echo '<input type="submit" name="submit" value="' . $name . '"/>';	    echo '</form>';	    //echo '<a href="'.site_url('manager/save_std_topping').'?topping='.$name.'&id='.$std_top.'"'.$this->config->config['link_menu_add'].'>'.$name.'   $'.$price.'</a>';					}    }}?>	<br/><div data-role="controlgroup">    <?php    if (!isset($std_top)) {	echo '<a href="' . site_url("order/view_order") . '?id=' . $order_id . '"' . $this->config->config['link_options_basic'] . '>View Order</a>';	echo '<a href="' . site_url("order/order_top") . '?id=' . $order_id . '"' . $this->config->config['link_options_basic'] . '>Main Menu</a>';	echo '<a href="' . site_url("order/toppings_cat_view") . '/' . $toppings_table . '"' . $this->config->config['link_options_back'] . '>Toppings</a>';    }    if (isset($std_top))	echo '<a href="' . site_url("manager/bounce_to_item") . '"' . $this->config->config['link_options_basic'] . '>Back To Item</a>';    if ($role > 1)	echo '<a href="' . secure_site_url("manager/view_order?id=") . $order_id . '"' . $this->config->config['link_options_basic'] . '>Dashboard</a>';    ?></div><?phpif ($order_id > 0) {    echo '<br/><p style="color: green;">Order Id: ' . $order_id . '</p>';} else {    if (!isset($std_top)) {	echo '<br/><p style="color: red;">Order Id: ' . $order_id . '</p>';	echo '<p style="color: red;">Problem: Try refreshing your browser and logging in again.</p>';    }}?>