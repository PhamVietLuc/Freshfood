<table class="container">
  <tr>
    <td style="text-align: center; padding: 0; background-color: #edbf7d; color: white;"><a href="admin.php?controller=list_news&action=add"><h3>Thêm danh mục</h3></a></td>
  </tr>
    <tr>
      <th><h1>Tên danh mục sản phẩm</h1></th>
      <th><h1>Quản lý</h1></th>
    </tr>
  <tbody>
    <?php foreach ($data as $rows): ?>
    <tr>
      <td><?php echo $rows->name; ?></td>
      <td style="text-align:center;">
            <a href="admin.php?controller=list_news&action=edit&id=<?php echo $rows->pk_list_news_id; ?>">Edit</a>&nbsp;
            <a href="admin.php?controller=list_news&action=delete&id=<?php echo $rows->pk_list_news_id; ?>" onclick="return window.confirm('Are you sure?');">Delete</a>
          </td>
    </tr>
    <!-- hien thi danh muc con -->
          <?php 
            $child = model::list_all("select * from list_news where parent_id=$rows->pk_list_news_id");
            foreach($child as $rows_child):
           ?>
           <tr>
          <td>----- <?php echo $rows_child->name; ?></td>
          <td style="text-align:center">
            <a href="admin.php?controller=list_news&action=edit&id=<?php echo $rows_child->pk_list_news_id; ?>">Edit</a>&nbsp;
            <a href="admin.php?controller=list_news&action=delete&id=<?php echo $rows_child->pk_list_news_id; ?>" onclick="return window.confirm('Are you sure?');">Delete</a>
          </td>
        </tr>
          <?php endforeach; ?> 
    <?php endforeach; ?>
    <tr>
    <td colspan="3"> <style type="text/css">
        .pagination{padding:0px; margin:0px;}
      </style>
      <ul class="pagination">
        <li class="page"><a class="page-item" href="#">Trang</a></li>
        <?php for($i = 1; $i <= $num_page; $i++): ?>
        <li class="page"><a class="page-item" href="admin.php?controller=list_news&p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
        <?php endfor; ?></td>
        </tr>
  </tbody>
</table>
