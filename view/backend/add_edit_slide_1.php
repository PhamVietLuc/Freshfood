<div class="col-md-8 col-xs-offset-2">
	<div class="panel panel-primary">
		<div style="background-color: #8bc34a;" class="panel-heading">Add edit slide_1</div>
		<div class="panel-body">
			<!-- muon upload anh thi trong the form phai co thuoc tinh: enctype="multipart/form-data" -->
			<form method="post" action="<?php echo $form_action; ?>" enctype= "multipart/form-data">
			<div class="row" style="margin-top:5px;">
				<div class="col-md-3">Ảnh</div>
				<div class="col-md-9">
					<input type="file" name="img">
				</div>
			</div>
			<!-- end row -->			
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-3"></div>
				<div class="col-md-9">
					<input style="background-color: #8bc34a;" type="submit" class="btn btn-primary" value="Process">
				</div>
			</div>
			<!-- end row -->
			</form>
		</div>
	</div>
</div>