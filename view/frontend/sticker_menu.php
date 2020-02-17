        <!-- Sticky Menu -->
        <div id="header-sticky-wrapper" class="sticky-wrapper hidden-print">
            <header data-uk-sticky id="header" class="header">
                <div class="container">
                    <div class="row" style="position: relative;">
                        <div class="col-xs-8 col-sm-3 col-md-2" id="logo">
                            <a class="logo" href="index.php"><h1><img class="default-logo" src="public/frontend/images/freshfoods.png" alt="Freshfoods"><img class="retina-logo" src="images/freshfoods%402x.png" width="300" height="50" alt="Freshfoods"></h1></a>                        </div>
                            <div class="col-xs-4 col-sm-9 col-md-10" id="menu">
                                <div><a href="#" id="offcanvas-toggler"><i class="uk-icon-bars"></i></a></div>
                                <div>
                                    <ul class="megamenu-parent menu-zoom hidden-xs hidden-sm hidden-md">
                                        <li class="menu-item has-child"><a href="index.php?controller=list_all_product">Sản phẩm buôn</a><div style="width: 300px;" class="dropdown dropdown-main menu-right">
                                        <div class="dropdown-inner">
                                            <ul class="dropdown-items">
                                                <?php 
                                                 //lay tat ca ban ghi trong tbl_category_product
                                                $list2 = model::list_all("select * from list_product where parent_id=1 order by pk_list_product_id desc");
                                                foreach($list2 as $rows):
                                                    ?>
                                                    <li class="menu-item"><a href="index.php?controller=list_product&id=<?php echo $rows->pk_list_product_id; ?>"><?php echo $rows->name ?></a></li>
                                                    <?php endforeach; ?>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>
                                        <li class="menu-item"><a href="tin-tuc">Tin tức</a></li>
                                        <li class="menu-item active"><a href="index.php?controller=cart">Giỏ hàng ( <?php echo isset($_SESSION["cart"])?count($_SESSION["cart"]):""; ?>)</a></li>
                                        <li>
                                                <?php 
            //kiem tra, neu user da dang nhap thi hien thi thong tin user
            if(isset($_SESSION["email"]))
            {
           ?>
           Xin chào <?php echo $_SESSION["email"]; ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.php?controller=login&act=logout">Logout</a>
           <?php }else{ ?>
          <a href="dang-nhap"><i class="fa fa-user"></i> Đăng nhập</a></li>
          <li>
          <a href="dang-ky"><i class="fa fa-user-plus"></i> Đăng ký</a> 
            <?php } ?>
                                        </li> 
                                    </ul>                     
                                </div>
                                    </div>
                                </div>
                            </div>
                        </header>
                    </div>
        <!-- /Sticky Menu -->