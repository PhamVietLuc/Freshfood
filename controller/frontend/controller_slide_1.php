<?php
class controller_slide_1 {
	public function __construct() {
		//lấy 1 bản ghi
		$slide_1 = model::list_all("select * from slide_1");
		include "view/frontend/slide_1.php";
	}
}
new controller_slide_1();
?>