 <section class="page-title">
    <div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-12 title">
            <h2>Sản phẩm bán buôn</h2>
        </div>
    </div>
</div>
</section>
<div class="container">
    <br>
    <br>
 <div class="row">
        <div class="col-sm-3 sidebar">      
<div class="module title1">
    <h3 class="module-title">Sản phẩm buôn</h3>
    <div class="module-content">
        <ul class="nav menu">
           <?php
                     $list = model::list_all("select * from list_product where parent_id=1 order by pk_list_product_id desc");
                     foreach ($list as $rows):
                      ?>
                  <li ><a href="index.php?controller=list_product&id=<?php echo $rows->pk_list_product_id; ?>"><?php echo $rows->name; ?></a></li>
                <?php endforeach; ?>
</ul>
</div>
</div>
        </div>
        <div class="col-sm-9">
<?php if(isset($record->title_product)): ?>  
        <div class="row product-detail">
                <div class="col-lg-6">
                    <a class="product-thumbnail" href="public/upload/product/<?php echo $record->img_product; ?>" data-uk-lightbox>
                        <img class="img-responsive" src="public/upload/product/<?php echo $record->img_product; ?>" alt="">                    </a>
                </div>
                <div class="col-lg-6">
                    <form id="w1" action="http://freshfoods.vn/de-suon-bo-my-ban-le.html" method="post">
<input type="hidden" name="_csrf-frontend" value="zePb6rHtoJETJMh-b5SL1cVjnjAHz5kvoppKzbVtnWqKh7Wi4bfxyElGjDcD4NmYkxrSd2n3y2HG7y2j5lXaXQ==">
                    <h1 class="product-title"><?php echo $record->title_product; ?></h1>
                                <div class="product-attribute-price"><?php echo number_format($record->price); ?>đ/kg</div>
                    
                                        <table class="table">
                                <tr class="product-attribute-catalogue">
                                    <th width="100">Danh mục</th>
                                    <?php $list = model::get_a_record("select name from list_product where pk_list_product_id=$record->fk_list_product_id"); ?>
                                    <td class="text-right"><?php echo $list->name; ?></td>
                                </tr>
                            <th width="100">Mô tả ngắn</th>
                    <td class="text-right"><?php echo $record->short_description; ?></td>
                                </tr>
                                <tr class="product-attribute-remain_stock">
                                    <th width="100">Hàng trong kho</th>
                                    <td class="text-right">Có</td>
                                </tr>
                                                                        </table>

                                            <div class="row">
                            <div class="col-sm-7">
                                <button class="btn btn-primary">
                                        <a style="color: white;" href="index.php?controller=cart&id=<?php echo $record->pk_product_id; ?>">Thêm vào giỏ hàng</a></button>
                            </div>
                        </div>
                    
                    </form>                </div>
            </div>

            <div class="product-tab">
                <ul id="w2" class="nav nav-tabs"><li class="active"><a href="#w2-tab0" data-toggle="tab">Chi tiết</a></li>
<li><a href="#w2-tab1" data-toggle="tab">Thông tin thanh toán</a></li>
<li><a href="#w2-tab2" data-toggle="tab">Đánh giá của khách hàng</a></li></ul>
<div class="tab-content"><div id="w2-tab0" class="tab-pane active">
    <?php echo $record->info_detail; ?>
</div>
<div id="w2-tab1" class="tab-pane">Tên công ty : Công ty TNHH Thực Phẩm Sạch Thương Mại T&P<br />
    Địa chỉ: Số 25 Phố Gia Quất, Phường Thượng Thanh. Quận Long Biên, TP Hà Nội, Việt Nam<br />
    Tài khoản ngân hàng : Vietinbank – CN Bắc Hà Nội, trích TK số: 102010001575011</div>
<div id="w2-tab2" class="tab-pane"><div class="fb-comments" data-href="http://freshfoods.vn/de-suon-bo-my-ban-le.html" data-numposts="5" data-width="100%"></div></div></div>
            </div>
        </div>
    <?php endif; ?>
</div>
</div>
          <br>
            <br>
</div>