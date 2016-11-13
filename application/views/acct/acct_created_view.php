<div id="main">
	<div class="ym-column">
		<div class="ym-col1">
			<div class="ym-cbox">
				<section class="box info">
						
					<h1> Account Created </h1>

						<?php
							if (isset($problem)){
								echo '<p class="error">'.$problem.'<br/>';
								echo 'Contact <a href="mailto:software@datavirtue.com">software@datavirtue.com</a>to resolve this issue.</p>';
							}
							
							if (isset($email_address)){
								
								echo '<p class="success">Please check '.$email_address.' for the verification email to activate your acount.</p>';
							
							}
							
						?>
						
				</section>
	
			</div>
		</div>
	</div>
</div>