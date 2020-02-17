<?php
	class controller_cart{
		public $model;
		public function __construct(){	
			//khởi tạo giỏ hàng
			if(!isset($_SESSION['cart'])) $_SESSION['cart'] = array();
			//===========	
			$id = isset($_GET["id"])&&is_numeric($_GET["id"])?$_GET["id"]:0;
			$act = isset($_GET["act"])?$_GET["act"]:"";
			switch($act){
				case "add":
					//them phan tu vao gio hang
					$this->cart_add($id);
					//quay tro lai trang gio hang
				echo "<script language='javascript'>location.href='index.php?controller=cart';</script>";
				break;
				case "delete":
				$this->cart_delete($id);
				//quay tro lai trang gio hang
				echo "<script language='javascript'>location.href='index.php?controller=cart';</script>";
				break;
				case "destroy":
				$this->cart_destroy();
				//quay tro lai trang gio hang
				echo "<script language='javascript'>location.href='index.php?controller=cart';</script>";
				break;
				// cập nhật số lượng phần tử trong giỏ hàng
				case "update":
				// duyệt từng phần tử của session array, lấy số lượng theo kiểu POST
				foreach ($_SESSION["cart"] as $product) {
					$pk_product_id = $product["pk_product_id"];
					$number = $_POST["product_$pk_product_id"];
					$this->cart_update($pk_product_id,$number);
				}
				// quay trở lại trang gio hàng
				echo "<script language='javascript'>location.href='index.php?controller=cart';</script>";
				break;
			}


			//===========
			//load view
			include "view/frontend/cart.php";
			//=================
		}
		//them phan tu vao gio hang
		public function cart_add($pk_product_id){
		    if(isset($_SESSION['cart'][$pk_product_id])){
		        //nếu đã có sp trong giỏ hàng thì số lượng lên 1
		        $_SESSION['cart'][$pk_product_id]['number']++;
		    } else {
		        //lấy thông tin sản phẩm từ CSDL và lưu vào giỏ hàng
		        $product = model::get_a_record("select * from product where pk_product_id=$pk_product_id");
		        
		        $_SESSION['cart'][$pk_product_id] = array(
		            'pk_product_id' => $pk_product_id,
		            'title_product' => $product->title_product,
		            'img_product' => $product->img_product,
		            'number' => 1,
		            'price' => $product->price
		        );
		    }
		}
		/**
		 * Cập nhật số lượng sản phẩm
		 * @param int
		 * @param int
		 */
		public function cart_update($pk_product_id, $number){
		    if($number==0){
		        //xóa sp ra khỏi giỏ hàng
		        unset($_SESSION['cart'][$pk_product_id]);
		    } else {
		        $_SESSION['cart'][$pk_product_id]['number'] = $number;
		    }
		}
		/**
		 * Xóa sản phẩm ra khỏi giỏ hàng
		 * @param int
		 */
		public function cart_delete($pk_product_id){
		    unset($_SESSION['cart'][$pk_product_id]);
		}
		/**
		 * Tổng giá trị giỏ hàng
		 */
		public function cart_total(){
		    $total = 0;
		    foreach($_SESSION['cart'] as $product){
		        $total += $product['price'] * $product['number'];
		    }
		    return $total;
		}
		/**
		 * Số sản phẩm có trong giỏ hàng
		 */
		public function cart_number(){
		    $number = 0;
		    foreach($_SESSION['cart'] as $product){
		        $number += $product['number'];
		    }
		    return $number;
		}
		/**
		 * Danh sách sản phẩm trong giỏ hàng
		 */
		public function cart_list(){
		    return $_SESSION['cart'];
		}
		/**
		 * Xóa giỏ hàng
		 */
		public function cart_destroy(){
		    $_SESSION['cart'] = array();
		}

	}
	new controller_cart();
?>