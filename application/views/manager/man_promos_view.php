<?php $role = $this->session->userdata('permission'); ?><img style="position:absolute; left:25px; top:5px;" src="<?php base_url(); ?>/images/mario.64.png" /><div class="ui-bar ui-bar-e"><h2>Customer Promotions</h2></div><?php if ($role > 4) echo '<a href="' . site_url("manager/dashboard") . '" ' . $this->config->config['link_options_basic'] . '>Dashboard</a>'; ?><a id="combos" href="#" onclick="toggle('combos');" <?php echo $this->config->config['link_div_control']; ?>>Combo Deals</a><div id="combosDiv" style="display: block;"><table>    <?php     $type="combo";    echo '<tr><th><a href="' . site_url("manager/add_promo") . '/' . $type . '"' . $this->config->config['link_mini_icon'] . 'data-icon="plus">Add</a></th><th>Code</th><th>Name</th><th>Description</th><th>Active</th></tr>';    foreach($combos as $combo){	$active = $combo['active'];	if ($active == 1) {	    $active = 'Y';	    $g = 'yes.png';	} else {	    $active = 'N';	    $g = 'no.png';	}	echo '<tr><td><a href="' . site_url("manager/delete_promo") . '/' . $combo['id'] . '"' . $this->config->config['link_mini_icon'] . 'data-icon="delete">Delete</a></td><td><a href="' . site_url("manager/change_promo") . '/' . $combo['id'] . '"' . $this->config->config["table_edit_basic"] . '>'.$combo['code'].'</a></td><td>'.$combo['name'].'</td><td>'.$combo['description'].'</td><td><img src="' . base_url() . 'images/' . $g . '"/></td></tr>';    }    ?></table></div><a id="bogos" href="#" onclick="toggle('bogos');" <?php echo $this->config->config['link_div_control']; ?>>Bogo Deals</a><div id="bogosDiv" style="display: block;"><table>    <?php    $type="bogo";    echo '<tr><th><a href="' . site_url("manager/add_promo") . '/' . $type . '"' . $this->config->config['link_mini_icon'] . 'data-icon="plus">Add</a></th><th>Code</th><th>Name</th><th>Description</th><th>Enabled</th></tr>';    echo '<tr><td></td><td></td><td></td><td></td></tr>';    ?></table></div><a id="freeToppings" href="#" onclick="toggle('freeToppings');" <?php echo $this->config->config['link_div_control']; ?>>Free Toppings</a><div id="freeToppingsDiv" style="display: block;"><table>    <?php     $type="free_toppings";    echo '<tr><th><a href="' . site_url("manager/add_promo") . '/' . $type . '"' . $this->config->config['link_mini_icon'] . 'data-icon="plus">Add</a></th><th>Code</th><th>Name</th><th>Description</th><th>Enabled</th></tr>';    echo '<tr><td></td><td></td><td></td><td></td></tr>';    ?></table></div>