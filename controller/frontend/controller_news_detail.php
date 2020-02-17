<?php
  class controller_news_detail {
	public function __construct() {
		$id = isset($_GET["id"]) && is_numeric($_GET["id"])?$_GET["id"]:0;
		//lay mot ban ghi
		$record = model::get_a_record("select * from news where pk_news_id=$id");
		//load view
		include "view/frontend/news_detail.php";
	}
}
new controller_news_detail();
?>