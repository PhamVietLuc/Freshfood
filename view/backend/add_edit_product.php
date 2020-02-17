<div class="col-md-8 col-xs-offset-2">
	<div class="panel panel-primary">
		<div style="background-color: #8bc34a;" class="panel-heading">Add edit product</div>
		<div class="panel-body">
			<!-- muon upload anh thi trong the form phai co thuoc tinh: enctype="multipart/form-data" -->
			<form method="post" action="<?php echo $form_action; ?>" enctype= "multipart/form-data">
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-3">Tiêu đề</div>
				<div class="col-md-9">
					<input type="text" name="title_product" class="form-control" value="<?php echo isset($record->title_product)?$record->title_product:""; ?>">
			</div>
			</div>
			<div class="row" style="margin-top:5px;">
				<div class="col-md-3">Giá</div>
				<div class="col-md-9">
					<input type="text" name="price" class="form-control" value="<?php echo isset($record->price)?$record->price:""; ?>">
				</div>
			</div>
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-3">Thuộc danh mục</div>
				<div class="col-md-9">
					<select name="fk_list_product_id">
						<?php 
							$list = model::list_all("select * from list_product where parent_id=0");
							foreach($list as $rows):
						 ?>
						<option <?php if(isset($record->fk_list_product_id)&&$record->fk_list_product_id==$rows->pk_list_product_id): ?> selected <?php endif; ?> value="<?php echo $rows->pk_list_product_id; ?>"><?php echo $rows->name; ?></option>
						<!-- cap con  -->
						<?php 
							$list_child = model::list_all("select * from list_product where parent_id=$rows->pk_list_product_id");
							foreach($list_child as $rows_child):
						 ?>
						<option <?php if(isset($record->fk_list_product_id)&&$record->fk_list_product_id==$rows_child->pk_list_product_id): ?> selected <?php endif; ?> value="<?php echo $rows_child->pk_list_product_id; ?>">-----<?php echo $rows_child->name; ?></option>
						<!-- cap con  -->
						
						<?php endforeach; ?>
						<?php endforeach; ?>				
					</select>
				</div>
			</div>
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-3">Giới thiệu</div>
				<div class="col-md-9">
					<textarea name="short_description" class="form-control" style="height:250px;">	
					<?php echo isset($record->short_description)?$record->short_description:""; ?>					
					</textarea>
					<script type="text/javascript">
						CKEDITOR.replace("short_description");
					</script>
				</div>
			</div>
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-3">Giới thiệu</div>
				<div class="col-md-9">
					<textarea name="info_detail" class="form-control" style="height:250px;">	
					<?php echo isset($record->info_detail)?$record->info_detail:""; ?>					
					</textarea>
					<script type="text/javascript">
						CKEDITOR.replace("info_detail");
					</script>
				</div>
			</div>
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-3"></div>
				<div class="col-md-9">
					<input type="checkbox" <?php if(isset($record->hot_product)&&$record->hot_product==1): ?> checked <?php endif; ?> name="hot_product" id="hot_product"> <label for="hot_product">Tin nổi bật</label>
				</div>
			</div>
			<!-- end row -->
			<!-- row -->
			<div class="row" style="margin-top:5px;">
				<div class="col-md-3">Ảnh</div>
				<div class="col-md-9">
					<input type="file" name="img_product">
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