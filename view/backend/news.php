<table class="container-fluid">
  <tr>
    <td style="text-align: center; padding: 0; background-color: #edbf7d; color: white;"><a href="admin.php?controller=news&action=add"><h3>Add news</h3></a></td>
  </tr>
    <tr>
      <th><h1>STT</h1></th>
      <th><h1>Ảnh</h1></th>
      <th><h1>Tiêu đề</h1></th>
      <th><h1>Nội dung</h1></th>
      <th><h1>Thuộc danh mục sản phẩm</h1></th>
      <th><h1>Quản lý</h1></th>
    </tr>
    <?php $stt = isset($_GET["p"]) ? ($_GET["p"]-1)*$record_per_page : 0; ?>
				<?php foreach($data as $rows): ?>
				<?php $stt++;  ?>
				<tr>
					<td style="text-align:center;"><?php echo $stt; ?></td>
					<td style="text-align:center;">
						<?php if(file_exists("public/upload/news/".$rows->img)): ?>
							<img src="public/upload/news/<?php echo $rows->img; ?>" style="width: 100px;">
						<?php endif; ?>
					</td>
					<td><?php echo $rows->name; ?></td>
					<td><?php echo $rows->content; ?></td>
					<td style="text-align:center;">
						<?php 
							//lay 1 ban ghi
							$news = model::get_a_record("select name from list_news where pk_list_news_id=$rows->fk_list_news_id");
							echo isset($news->name)?$news->name:"";
						 ?>
					</td>
					<td style="text-align:center;">
						<a href="admin.php?controller=news&action=edit&id=<?php echo $rows->pk_news_id; ?>">Edit</a>&nbsp;
						<a href="admin.php?controller=news&action=delete&id=<?php echo $rows->pk_news_id; ?>" onclick="return window.confirm('Are you sure?');">Delete</a>
					</td>
				</tr>
    <?php endforeach; ?>
    <tr>
    <td colspan="3"> <style type="text/css">
        .pagination{padding:0px; margin:0px;}
      </style>
      <ul class="pagination">
        <li class="page"><a class="page-item" href="#">Trang</a></li>
        <?php for($i = 1; $i <= $num_page; $i++): ?>
        <li class="page"><a class="page-item" href="admin.php?controller=news&p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
        <?php endfor; ?></td>
        </tr>
</table>
