<div class="col-md-8 col-xs-offset-2">
	<div class="panel panel-primary">
		<div style="background-color: #8bc34a;" class="panel-heading">Add edit slide</div>
		<div class="panel-body">
			<!-- muon upload anh thi trong the form phai co thuoc tinh: enctype="multipart/form-data" -->
			<form method="post" action="<?php echo $form_action; ?>" enctype= "multipart/form-data">
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-3">Tiêu đề 1</div>
				<div class="col-md-9">
					<input type="text" name="title_1" class="form-control" value="<?php echo isset($record->title_1)?$record->title_1:""; ?>">
			</div>
			</div>
			<div class="row" style="margin-top:5px;">
				<div class="col-md-3">Tiêu đề 2</div>
				<div class="col-md-9">
					<input type="text" name="title_2" class="form-control" value="<?php echo isset($record->title_2)?$record->title_2:""; ?>">
			</div>
			</div>
			<div class="row" style="margin-top:5px;">
				<div class="col-md-3">Tiêu đề 3</div>
				<div class="col-md-9">
					<input type="text" name="title_3" class="form-control" value="<?php echo isset($record->title_3)?$record->title_3:""; ?>">
			</div>
			</div>
			<!-- end row -->
			<!-- row -->
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