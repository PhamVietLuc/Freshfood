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
                  <li ><a href="danh-sach-san-pham/<?php echo $rows->pk_list_product_id; ?>"><?php echo $rows->name; ?></a></li>
                <?php endforeach; ?>
</ul>
</div>
</div>
        </div>
  <div id="w1" class="list-view">
                <div data-uk-grid-match class="uk-grid uk-grid-small product-list">
                    <?php foreach ($data as $rows): ?>
                <div class="uk-width-small-1-2 uk-width-medium-1-2 uk-width-large-1-3" data-key="87">
<div class="product">
    <a class="product-thumbnail" style="display: block" href="index.php?controller=detail_product&id=<?php echo $rows->pk_product_id; ?>">
        <div><img src="public/upload/product/<?php echo $rows->img_product; ?>" alt="<?php echo $rows->title_product; ?>"></div>
        <div class="product-overlay">
            <span class="read-link"><i class="fa fa-link"></i></span></div>
    </a>
    <a class="product-title" href="index.php?controller=detail_product&id=<?php echo $rows->pk_product_id; ?>"><?php echo $rows->title_product; ?> </a>
    <div class="product-price"><?php echo number_format($rows->price); ?>đ/kg</div>
    <div class="button-group btn-group-justified text-uppercase">
        <a href="index.php?controller=cart&id=<?php echo $rows->pk_product_id; ?>"
           class="btn btn-primary btn-lg">Mua ngay</a>
    </div>
</div>
</div>
 <?php endforeach; ?>
</div>
<div style="clear: both;"></div>
                  <ul class="pagination pull-right" style="margin-top: 0px !important; padding-right: 15px;">
                    <li><a href="">Trang</a></li>
                    <?php for($i = 1; $i<=$num_page; $i++): ?>
                    <li><a href="index.php?controller=list_product&p=<?php echo $id;?>&p=<?php echo $i;?>"><?php echo $i; ?></a></li>
                <?php endfor; ?>
                  </ul>            
</div>
 <br>
            <br>
            <br>
</div>
</div>