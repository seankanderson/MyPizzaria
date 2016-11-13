<div id="main">
	<div class="ym-column">
		<div class="ym-col1">
			<div class="ym-fbox">
				<section class="box info">
															
					<form class="content_form ym-form ym-columnar" method="post" action="https://datavirtue.com/CI_210_Base/index.php/account/send_pw_reset">
						
						<div class="ym-fbox-text">						
							<label for="email_address">Email Address</label>
							<input type="text" name="email_address" value="<?php set_value('email_address'); ?>" autofocus placeholder="Account Email Address"/>
						</div>
						
						<div class="ym-fbox-button">
						<input type="submit" class="ym-button" name="submit" value="Send Reset Request"/>							
						</div>
						
					</form>
					
					<?php

						echo validation_errors('<p class="error">');
						
						if (isset($problem)){
							echo '<p class="error">'.$problem.'</p>';
						}
					?>
				</section>
			</div>			
		</div>
	</div>
</div>