<?php$order_id = $this->session->userdata('order_id');$user_id = $this->session->userdata('user_id');$phone = $this->session->userdata('phone');$role = $this->session->userdata('permission');if (!isset($role) || $role < 1) {    redirect(site_url('/order/login'));}?><img style="position:absolute; left:25px; top:5px;" src="<?php base_url(); ?>/images/mario.64.png" /><div class="ui-bar ui-bar-e"><h2>Menu Categories</h2></div> <?phpif (isset($menu_categories)) {    foreach ($menu_categories->result() as $cat) {	$display_name = ucfirst($cat->category);	$name = $cat->category;	echo '<a href="' . site_url('order/show_menu_items') . '/' . $name . '"' . $this->config->config['link_menu_basic'] . '">' . $display_name . '</a>';    }}?><div data-role="controlgroup">    <a  href="<?php echo site_url("order/view_order") . '?id=' . $order_id; ?>" <?php echo $this->config->config['link_options_basic']; ?> data-icon="grid" rel="external" >View Order</a>    <a href="<?php echo site_url("order/logout"); ?>" <?php echo $this->config->config['link_options_basic']; ?> data-icon="minus" >Cancel/Logout</a><?php if ($role > 1) echo '<a href="' . site_url("manager/dashboard") . '"' . $this->config->config['link_options_basic'] . '>Dashboard</a>'; ?></div><?phpif ($order_id > 0) {    echo '<br/><p style="color: green;">Order Id: ' . $order_id . '</p>';} else {    echo '<br/><p style="color: red;">Order Id: ' . $order_id . '</p>';    echo '<p style="color: red;">Problem: Try refreshing your browser and logging in again.</p>';}?>