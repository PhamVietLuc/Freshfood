<!DOCTYPE html>
<html>
<head>
	<title></title>
  <link rel="stylesheet" type="text/css" href="public/backend/css/bootstrap.min.css">
  <!-- load ckeditor -> ckeditor.com -->
  <script type="text/javascript" src="public/backend/ckeditor/ckeditor.js"></script>
	<link rel="stylesheet" href="public/backend/css_admin/style.css">
</head>
<body class="container-fluid">
<ul class="menu cf">
  <li style="margin-right: 40px; background-color: white;"><a href="#"><img src="public/frontend/images/freshfoods.png" ></a></li>
  <li><a href="admin.php?controller=list_product">Danh mục sản phẩm</a></li>
  <li><a href="admin.php?controller=product">Sản phẩm </a></li>
  <li><a href="admin.php?controller=list_news">Danh mục tin tức</a></li>
  <li><a href="admin.php?controller=news">Tin tức</a></li>
  <li><a href="admin.php?controller=slide">Slide </a></li>
  <li><a href="admin.php?controller=user">Quản lý user</a></li>
  <li><a href="admin.php?controller=shoptop">Shop top</a></li>
  <li><a href="admin.php?controller=slide_1">Slide 1</a></li>
  <li><a href="admin.php?controller=order">Order</a></li>
  <li><a href="admin.php?controller=logout">Đăng xuất</a></li>
</ul>
<div class="container" style="margin-top:70px;">
   	<?php 
        //kiem tra xem duong dan controller co ton tai khong, neu co ton tai thi load file do ra
        if(file_exists($controller))
          include $controller;//include "controller/backend/controller_user.php"
     ?>
   </div>
</body>
</html>
