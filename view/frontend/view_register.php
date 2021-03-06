<section class="page-title">
    <div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-12 title">
            <h1>Đăng ký</h1>
        </div>
    </div>
</div>
</section>
<div class="container">
<div class="template-customer">
          <h2>Đăng ký tài khoản</h2>
          <?php 
            if(isset($_GET["act"])&&$_GET["act"]=="success")
            {
           ?>
           <p style="color:red;">Bạn đã đăng ký thành công!</p>
           <?php }else{ ?>
          <p><i>Nếu bạn chưa có tài khoản, hãy đăng ký ngay để nhận thông tin ưu đãi cùng những ưu đãi từ cửa hàng.</i></p>
          <?php } ?>
          <div class="row" style="margin-top:50px;">
            <div class="col-md-6">
              <div class="wrapper-form">
                <form method='post' action="">
                  <p class="title"><span>Đăng ký tài khoản</span></p>
                  <div class="form-group">
                    <label>Họ và tên:</label>
                    <input type="text" name="fullname" class="input-control">
                  </div>
                  <div class="form-group">
                    <label>Email:<b id="req">*</b></label>
                    <input type="text" name="email" class="input-control" required>
                  </div>
                  <div class="form-group">
                    <label>Địa chỉ:</label>
                    <input type="text" name="address" class="input-control">
                  </div>
                  <div class="form-group">
                    <label>Điện thoại:</label>
                    <input type="text" name="phone_number" class="input-control">
                  </div>
                  <div class="form-group">
                    <label>Mật khẩu:<b id="req">*</b></label>
                    <input type="password" name="password" class="input-control" required="">
                  </div>
                  <div class="form-group">
                    <input type="submit" class="button" value="Đăng ký">
                  </div>
                </form>
              </div>
            </div>
            <div class="col-md-6">
              <div class="wrapper-form">
                <p class="title"><span>Đăng nhập</span></p>
                <p>Đăng nhập tài khoản nếu bạn đã có tài khoản. Đăng nhập tài khoản để theo dõi đơn đặt hàng, vận chuyển và đặt hàng được thuận lợi.</p>
                <a href="dang-nhap" class="button">Đăng nhập</a> </div>
            </div>
          </div>
        </div>
            </div>
          <br>
            <br>
</div>