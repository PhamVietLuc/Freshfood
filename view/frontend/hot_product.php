<section class="bottom-a">

    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12">
                <div class="module title2">
                    <h3 class="module-title text-uppercase">Sản phẩm nổi bật</h3>
                    <div class="module-content">
                        
<div id="w0" class="uk-grid product-list uk-grid-match">
        <?php foreach ($hotproduct as $rows): ?>
    <div class="uk-width-small-1-2 uk-width-medium-1-3 uk-width-large-1-4" data-key="176">
<div class="product">
    <a class="product-thumbnail" style="display: block" href="index.php?controller=detail_product&id=<?php echo $rows->pk_product_id; ?>">
        <div><img src="public/upload/product/<?php echo $rows->img_product; ?>" alt="<?php echo $rows->title_product; ?>"></div>        <div class="product-overlay">
            <span class="read-link"><i class="fa fa-link"></i></span>        </div>
    </a>
    <a class="product-title" href="index.php?controller=detail_product&id=/<?php echo $rows->pk_product_id; ?>"><?php echo $rows->title_product; ?></a>
    <div class="product-price">
       <?php echo number_format($rows->price); ?>đ/kg    </div>
    
    <div class="text-uppercase">
        <div class="button-group btn-group-justified">
            <a class="btn btn-primary btn-lg" href="gio-hang/<?php echo $rows->pk_product_id; ?>">Mua ngay</a>
                    </div>

    </div>
</div>
</div>
<?php endforeach; ?>
</div>
                        <div class="uk-text-center">
                            <a class="btn btn-primary btn-lg" href="tat-ca-san-pham">Xem thêm</a>                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>