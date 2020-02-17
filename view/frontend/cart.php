 <section class="page-title">
    <div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-12 title">
            <h2>Giỏ hàng của bạn</h2>
        </div>
    </div>
</div>
</section>
<div class="container">
    <br>
    <br>
<input type="hidden" name="_csrf-frontend" value="JPOYX_nClL0Zh5QgBafoxmMVPWUtle1B9b3NrgBUxVBjl_YXqZjF5EPl0Glp07qLNWxxIkOtvw-RyKrAU2yCZw==">
    
    <div class="row">
        <div class="col-md-12">
                <noscript>Hãy bật javascript để xem nội dung trang</noscript>

<div id="orderguest-cart">
    <form action="index.php?controller=cart&act=update" method="post">
    <div class="text-center ">
    </div>
<table class="table table-cart ">    <tbody v-if="subTotal(cart)>0">
    <?php 
                  //duyet cac phan tu trong $_SESSION["cart"]
                  foreach($_SESSION["cart"] as $key => $rows):
               ?>
    <tr v-for="(item, index) in cart">
        <td width="30">
            <button type="button" class="btn btn-transparent btn-remove" v-on:click="deleteItem(index)"><a href="index.php?controller=cart&act=delete&id=<?php echo $rows["pk_product_id"]; ?>" data-id="2479395"><i class="fa fa-trash"></i></a></button>
        </td>
        <td width="130">
            <img src="public/upload/product/<?php echo $rows["img_product"]; ?>"/>
        </td>
        <td>
            <div class="product-title"><a href="index.php?controller=list_product&id=<?php echo $rows["pk_product_id"]; ?>"><?php echo $rows["title_product"]; ?></a></div>
        </td>
        <td><b>Thành tiền</b><br>    
        <i><?php echo number_format($rows["price"]*$rows["number"]); ?>đ/kg</i>
        </td>
        <td class="text-right" width="120">
            <input type="number" step="1" min="1" value="<?php echo $rows["number"]; ?>" width="12" class="form-control text-right"
                  name="product_<?php echo $rows["pk_product_id"]; ?>" required="Không thể để trống" v-model="item.quantity"/>
        </td>
    </tr>
<?php endforeach; ?>
<tr>                  
                    <td  colspan="2"><a href="index.php?controller=cart&act=destroy" class="button pull-right">Xóa toàn bộ</a></td>
                    <td width="250">
                    <a href="trang-chu" class="button pull-right black">Tiếp tục mua hàng</a>
                     </td>
                     <td colspan="2" width="200"><input style="background-color: #8bc34a; color: white;"  type="submit" class="button pull-right" value="Cập nhật"></td>
                  </tr>
    <tr class="table-cart--total">
        <td colspan="5">
             <?php echo number_format($this->cart_total()); ?>₫ <br>
            <?php if(count($_SESSION["cart"]) > 0): ?><a href="index.php?controller=checkout" class="button black">Thanh toán</a> <?php endif; ?>
        </td>
    </tr>
    </tbody>
</table>
</div>
</form>
        </div>
    </div>
    <hr>


    <div class="panel panel-payment-method">
                    <div class="panel-heading">
                <h4 class="panel-title">
                    <input type="radio" id="orderguest-payment_type__cod" class="iradio_square-green" name="OrderGuest[payment_type]" value="cod" checked> <label
                            for="orderguest-payment_type__cod"> Thanh toán trực tiếp tại nhà</label>
                </h4>
            </div>

            <div class="panel-body">
                Quý khách vui lòng thanh toán cho Fresh Foods bằng tiền mặt ngay sau khi nhận hàng.            </div>
                    <div class="panel-heading">
                <h4 class="panel-title">
                    <input type="radio" id="orderguest-payment_type__ibank" class="iradio_square-green" name="OrderGuest[payment_type]" value="ibank"> <label
                            for="orderguest-payment_type__ibank"> Thanh toán qua chuyển khoản ngân hàng</label>
                </h4>
            </div>

            <div class="panel-body">
                Quý khách có thể thanh toán qua hệ thống toàn khoản sau của Fresh Foods<br />
            - Tài khoản ngân hàng Vietinbank – Chi Nhánh Bắc Hà Nội<br />
            Trích tài khoản số: 102010001575011<br />
            - Tài khoản ngân hàng Vietcombank - Chi Nhánh Trung Hòa<br />
            Trích tài khoản số: 0011.00414.9307<br />
            Sau khi chuyển khoản vui ghi chú nội dung chuyển khoản xuống phía dưới để nhân viên có thể kiểm tra giao dịch một cách tốt nhất.<br />
<br />
            Xin Quý khách lưu ý: Fresh Foods sẽ giao hàng cho Quý khách sau khi nhận được chuyển khoản của Quý khách<br />
            hàng, trong trường hợp Quý khách hàng không thực hiện việc thanh toán đúng thỏa thuận Fresh Foods có quyền<br />
            từ chối giao hàng.<br />
            <br />
                    </div>
            </div>

<div class="form-group field-orderguest-note">
<label class="control-label" for="orderguest-note">Note</label>
<textarea id="orderguest-note" class="form-control" name="OrderGuest[note]"></textarea>

<div class="help-block"></div>
</div>
    <div class="text-right">
        <button type="submit" class="btn btn-primary btn-lg">Đặt hàng</button>    </div>

    <br>
    <br>
    </div>
</div>
          <br>
            <br>
</div>