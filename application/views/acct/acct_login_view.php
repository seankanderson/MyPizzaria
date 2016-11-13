<div id="main">
	<div class="ym-column">
		<div class="ym-col1">
			<div class="ym-cbox">
				
				<section class="box info">
										
					<form class="ym-form ym-columnar content_form" action="https://datavirtue.com/CI_210_Base/index.php/account/validate_account" method="post" accept-charset="utf-8">
						
						<div class="legend">Sign In</div>
						
						<div class="ym-fbox-text">	
							<label for="email_address">Email Address</label>
							<input type="text" name="email_address" value="<?php set_value('email_address'); ?>" autofocus />
						</div>
						
						<div class="ym-fbox-text">	
							<label for="password">Password</label>
							<input type="password" name="password" />
						</div>
						
						<div class="ym-fbox-button">
							<input type="submit" class="ym-button" name="submit" value="Sign In"/>							
						</div>
					
					</form>
					
					<?php
						echo validation_errors('<p> class="error">');
						
						if (isset($problem)){
							echo '<p class="error">'.$problem.'</p>';	
						}
					?>
				</section>
				
			</div>		
		</div>	

		<aside class="ym-col3">
			<div class="ym-cbox">
							
				<h4>Options</h4>
							
				<section class="box info">
													
						<a class="ym-button ym-next"  href="https://datavirtue.com/CI_210_Base/index.php/account/create">Create Account</a>
						<a class="ym-button ym-next"  href="https://datavirtue.com/CI_210_Base/index.php/account/reset">Reset Account</a>
														
				</section>
			</div>
		</aside>	
		
	</div>
</div>