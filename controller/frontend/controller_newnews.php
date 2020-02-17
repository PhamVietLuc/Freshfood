<?php 
	class controller_newnews{
		public function __construct(){
			$id = isset($_GET["id"]) && is_numuric($_GET["id"])?$_GET["id"]:0;
			$newnews = model::list_all("select * from news order by pk_news_id=$id desc limit 0,6");
			include "view/frontend/newnews.php";
		}
	}
	new controller_newnews();
 ?>