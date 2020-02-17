<?php 
	class controller_hotproduct{
		public function __construct(){
			//lay 6 san pham noi bat
			$hotproduct = model::list_all("select * from product order by pk_product_id desc limit 0,8");
			//load view
			include "view/frontend/hot_product.php";
		}
	}
	new controller_hotproduct();
 ?>