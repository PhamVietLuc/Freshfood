<div class="col-md-8 col-xs-offset-2">	
	<div class="panel panel-primary">
		<div style="background-color: #8bc34a;" class="panel-heading">Add edit user</div>
		<div class="panel-body">
		<form method="post" action="<?php echo $form_action; ?>">
			<!-- rows -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-2">Fullname</div>
				<div class="col-md-10">
					<input type="text" value="<?php echo isset($record->fullname)?$record->fullname:""; ?>" name="fullname" class="form-control" required>
				</div>
			</div>
			<!-- end rows -->
			<!-- rows -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-2">Email</div>
				<div class="col-md-10">
					<input type="email" value="<?php echo isset($record->email)?$record->email:""; ?>" name="email" class="form-control" <?php if(isset($record->email)): ?> disabled <?php else: ?> required <?php endif; ?>>
				</div>
			</div>
			<!-- end rows -->
			<!-- rows -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-2">Password</div>
				<div class="col-md-10">
					<input type="password" name="password" class="form-control" <?php if(isset($record->email)): ?> placeholder="Không đổi password thì không nhập thông tin vào ô textbox này" <?php else: ?> required <?php endif; ?>>
				</div>
			</div>
			<!-- end rows -->
			<!-- rows -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-2"></div>
				<div class="col-md-10">
					<input style="background-color: #8bc34a;" type="submit" value="Process" class="btn btn-primary">
				</div>
			</div>
			<!-- end rows -->
		</form>
		</div>
	</div>
</div>