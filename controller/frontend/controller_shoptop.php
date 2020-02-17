<?php
class controller_shoptop {
	public function __construct() {
		//lấy 1 bản ghi
		$shoptop = model::list_all("select * from shoptop");
		include "view/frontend/shoptop.php";
	}
}
new controller_shoptop();
?>