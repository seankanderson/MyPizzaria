<!-- 
	
	Standard view to create a user account

 -->
<div id="main">
	<div class="ym-column">
				<div class="ym-col1">
					<div class="ym-cbox">
						<section class="box info">
							<form class="content_form ym-form ym-columnar" action="https://datavirtue.com/CI_210_Base/index.php/account/create" method="post" accept-charset="utf-8">
								
								<div class="legend">Create Account</div>
								
								<div class="ym-fbox-text">
									<label for="name">Name</label>
									<input type="text" name="name" autofocus/>
								</div>
								
								<div class="ym-fbox-text">
									<label for="email_address">Email Address</label>
									<input type="text" name="email_address" />
								</div>
								
								<div class="ym-fbox-text">
									<label for="email_confirmation">Confirm Email</label>
									<input type="text" name="email_confirmation" />
								</div>
								
								<div class="ym-fbox-text">
									<label for="password">Password</label>
									<input type="password" name="password" />
								</div>
								
								<div class="ym-fbox-text">
									<label for="password_confirmation">Confirm Password</label>
									<input type="password" name="password_confirmation" />
								</div>
								
								<div class="ym-fbox-button">
									<input type="submit" class="ym-button" name="submit" value="Create"/>
								</div>
								
							</form>
						
						<?php echo validation_errors('<p class="error">'); ?>	
						<?php
						if (isset($problem)){
							echo "<p class=\"error\">$problem</p>";
							echo '<a class="ym-button ym-next" href="https://datavirtue.com/CI_210_Base/index.php/account/reset">Reset Account</a>';
						}	
						
						?>
						
					</section>
				</div>	
		</div>
	</div>
</div>
