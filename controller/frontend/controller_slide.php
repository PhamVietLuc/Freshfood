<?php
class controller_slide {
	public function __construct() {
		//lấy 1 bản ghi
		$slide = model::list_all("select * from slide");
		include "view/frontend/slide.php";
	}
}
new controller_slide();
?>