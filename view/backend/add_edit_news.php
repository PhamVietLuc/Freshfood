<div class="col-md-8 col-xs-offset-2">
	<div class="panel panel-primary">
		<div style="background-color: #8bc34a;" class="panel-heading">Add edit news</div>
		<div class="panel-body">
			<!-- muon upload anh thi trong the form phai co thuoc tinh: enctype="multipart/form-data" -->
			<form method="post" action="<?php echo $form_action; ?>" enctype= "multipart/form-data">
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-3">Tiêu đề</div>
				<div class="col-md-9">
					<input type="text" name="name" class="form-control" value="<?php echo isset($record->name)?$record->name:""; ?>">
			</div>
			</div>
			<div class="row" style="margin-top:5px;">
				<div class="col-md-3">Nội dung</div>
				<div class="col-md-9">
					<input type="text" name="content" class="form-control" value="<?php echo isset($record->content)?$record->content:""; ?>">
			</div>
			</div>
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-3">Thuộc danh mục</div>
				<div class="col-md-9">
					<select style="width: 600px;" name="fk_list_news_id">
						<?php 
							$list = model::list_all("select * from list_news where parent_id=0");
							foreach($list as $rows):
						 ?>
						<option <?php if(isset($record->fk_list_news_id)&&$record->fk_list_news_id==$rows->pk_list_news_id): ?> selected <?php endif; ?> value="<?php echo $rows->pk_list_news_id; ?>"><?php echo $rows->name; ?></option>
						<!-- cap con  -->
						<?php 
							$list_child = model::list_all("select * from list_news where parent_id=$rows->pk_list_news_id");
							foreach($list_child as $rows_child):
						 ?>
						<option <?php if(isset($record->fk_list_news_id)&&$record->fk_list_news_id==$rows_child->pk_list_news_id): ?> selected <?php endif; ?> value="<?php echo $rows_child->pk_list_news_id; ?>">-----<?php echo $rows_child->name; ?></option>
						<!-- cap con  -->
						
						<?php endforeach; ?>
						<?php endforeach; ?>				
					</select>
				</div>
			</div>
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-3">Mô tả</div>
				<div class="col-md-9">
					<textarea name="description" class="form-control" style="height:250px;">	
					<?php echo isset($record->description)?$record->description:""; ?>					
					</textarea>
					<script type="text/javascript">
						CKEDITOR.replace("description");
					</script>
				</div>
			</div>
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-3"></div>
				<div class="col-md-9">
					<input type="checkbox" <?php if(isset($record->hot_news)&&$record->hot_news==1): ?> checked <?php endif; ?> name="hot_news" id="hot_news"> <label for="hot_news">Tin nổi bật</label>
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