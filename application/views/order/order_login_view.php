<img style="position:absolute; left:25px; top:5px;" src="<?php base_url(); ?>/images/mario.64.png" /><div class="ui-bar ui-bar-e"><h2>Login</h2></div> 	<form id="loginForm" action="<?php echo site_url('auth/login'); ?>" method="post" accept-charset="utf-8">    <input type="hidden" name="remember" value="0"/>    <div data-role="fieldcontain">	<label for="identity">Email Address</label>	<input type="text" id="identity" name="identity" autofocus />    </div>    <div data-role="fieldcontain">	<label for="password">Password</label>	<input type="password" id="password" name="password" />    </div>    <div class="ui-body ui-body-b">	<fieldset class="ui-grid-a">	    <input type="submit" name="submit" value="Login"/>								</fieldset>    </div></form><br/><div style="width: 90%; margin: auto; margin-bottom: 2em; "><a href="<?php echo site_url('/order/quick_order'); ?>" <?php echo $this->config->config['link_options_basic']; ?>>Quick Order</a></div><a href="<?php echo site_url('/order/new_account'); ?>" <?php echo $this->config->config['link_options_basic']; ?>>Sign Up</a><a href="<?php echo site_url('/order/forgot_password'); ?>" <?php echo $this->config->config['link_options_basic']; ?>>Reset Password</a><?php$messages = $this->ion_auth->messages();echo $messages;$errors = $this->ion_auth->errors();echo $errors;?><?phpecho validation_errors('<p class="error">');if (isset($problem)) {    echo '<p class="error">' . $problem . '</p>';}?>