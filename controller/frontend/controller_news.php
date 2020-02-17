<?php 
	class controller_news{
		public function __construct(){
			$id = isset($_GET["id"]) && is_numeric($_GET["id"])?$_GET["id"]:0;
			$news = model::list_all("select * from news order by pk_news_id=$id desc limit 0,8");
			include "view/frontend/news.php";
		}
	}
	new controller_news();
 ?>