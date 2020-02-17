<?php 
	class controller_detail_product{
		public function __construct(){
			$id = isset($_GET["id"])&&is_numeric($_GET["id"]) ? $_GET["id"]:0;
			//lay mot ban ghi
			$record = model::get_a_record("select * from product where pk_product_id=$id");
			//load view
			include "view/frontend/detail_product.php";
		}
	}
	new controller_detail_product();
 ?>