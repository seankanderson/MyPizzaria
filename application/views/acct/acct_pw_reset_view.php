<div id="main">
	<div class="ym-column">
		<div class="ym-col1">
			<div class="ym-cbox">
				
				<section class="box info">
				
					<?php
					
						if (isset($problem)){
							echo '<p class="error">'.$problem.'</p>';
							die();
						}
					?>
					
					<?php if (isset($email_address) && isset($reset_value)): ?>
								
						
						
						<form class="ym-form ym-columnar content_form" method="post" action="https://datavirtue.com/CI_210_Base/index.php/account/reset_password">
							
							<div class="legend">Finish Account Verification</div>
							
							<div class="ym-fbox-text">	
								<input type="hidden" name="email_address" value="<?php echo $email_address ?>" />
								<input type="hidden" name="reset_value" value="<?php echo $reset_value ?>" />
							</div>
							
							<div class="ym-fbox-text">	
								<label for="password">New Password</label>
								<input type="password" name="password" autofocus id="password"/>
							</div>
							
							<div class="ym-fbox-text">	
								<label for="password_confirmation">Password Confirmation</label>
								<input type="password" name="password_confirmation" id="password_confirmation"/>
							</div>
							
							<div class="ym-fbox-button">
								<input type="submit" name="reset" value="Reset"/>												
							</div>
							
							<?php echo validation_errors('<p> class="error">'); ?>
								
						</form>
						
					<?php endif; ?>
					
					<?php 
						$login = $this->session->userdata('logged_in');
						if($login == TRUE && !isset($reset_value)): 
						$name = $this->session->userdata('email_address');
					?>
						
						<form class="ym-form ym-columnar content_form" method="post" action="https://datavirtue.com/CI_210_Base/index.php/account/reset_password">
							
							<div class="legend">Reset Password</div>
							
							<label for="email_address">Email Address</label>
							<input type="text" name="email_address" value="<?php echo $name; ?>" id="email_address"/>
															
							<label for="current_ password">Current Password</label>
							<input type="password" name="current_password" autofocus id="current_password"/>
									
							<label for="password">New Password</label>
							<input type="password" name="password" id="password"/>
																				
							<label for="password_confirmation">Password Confirmation</label>
							<input type="password" name="password_confirmation" id="password_confirmation"/>
							
							<div class="ym-fbox-button">
							<input type="submit" name="change" value="Change"/>
							</div>
							
							<?php echo validation_errors('<p class="error">'); ?>
						</form>
						
					<?php else: ?>
					
						<p>You must be logged in to use this service.</p>
						<p><a class="ym-button ym-next" href="https://datavirtue.com/CI_210_Base/index.php/account/login">Sign In</a></p>
								
					<?php endif; ?>
					
				</section>
			</div>
		</div>
	</div>
</div>