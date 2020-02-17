<?php 
	class controller_news{
		public function __construct(){
			//lay bien action truyen tu url
			$action = isset($_GET["action"])?$_GET["action"]:"";
			switch($action){				
				case "edit":
					//chuc nang sua ban ghi
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//goi ham de thuc hien chuc nang edit
					$this->edit_news($id);
				break;
				case "do_edit":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//goi ham do_edit de update ban ghi
					$this->do_edit($id);
				break;
				case "add":
					//goi ham de thuc hien chuc nang edit
					$this->add_news();
				break;
				case "do_add":
					//goi ham do_add de add ban ghi
					$this->do_add();
				break;
				case "delete":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//goi ham delete news
					$this->delete($id);
				break;
				default:
					$this->list_news();
				break;
			}
		}
		public function list_news(){
			//-----
			//phan trang
			//quy dinh so ban ghi tren mot trang
			$record_per_page = 6;
			//tinh tong so ban ghi
			$total_record = model::num_rows("select pk_news_id from news");
			//tinh so trang
			$num_page = ceil($total_record/$record_per_page);
			//lay bien p truyen tu url (bien nay se chi trang hien tai)
			$p = isset($_GET["p"])&&$_GET["p"]>0 ? $_GET["p"]-1:0;
			//xac dinh lay tu ban ghi nao
			$from = $p*$record_per_page;
			//sql
			$data = model::list_all("select * from news order by pk_news_id desc limit $from,$record_per_page");
			//load view
			include "view/backend/news.php";
			//-----
		}
		//edit news
		public function edit_news($id){
			//tao bien form_action de dieu phoi thuoc tinh action cua the form
			$form_action = "admin.php?controller=news&action=do_edit&id=$id";
			//lay mot ban ghi tuong ung voi id truyen vao
			$record = model::get_a_record("select * from news where pk_news_id=$id");
			//load view
			include "view/backend/add_edit_news.php";
		}
		//add news
		public function add_news(){
			//tao bien form_action de dieu phoi thuoc tinh action cua the form
			$form_action = "admin.php?controller=news&action=do_add";
			//load view
			include "view/backend/add_edit_news.php";
		}
		//do_edit
		public function do_edit($id){
			$name = $_POST["name"];
			$content = $_POST["content"];
			$fk_list_news_id = $_POST["fk_list_news_id"];
			$description = $_POST["description"];
			$hot_news = isset($_POST["hot_news"])? 1:0;
			model::execute("update news set name='$name', description='$description', content='$content', fk_list_news_id=$fk_list_news_id, hot_news=$hot_news where pk_news_id=$id");
			// nếu người dùng chọn file upload 
			if($_FILES["img"]["name"]!=""){
				//lấy tên file gán vào một biến
				$img = time().$_FILES["img"]["name"];
				move_uploaded_file($_FILES["img"]["tmp_name"], "public/upload/news/$img");
				//update bản ghi
				model::execute("update news set img='$img' where pk_news_id=$id");
			}
			//quay tro lai controller news
			header("location:admin.php?controller=news");
		}
		//do_add
		public function do_add(){
			$name = $_POST["name"];
			$content = $_POST["content"];
			$fk_list_news_id = $_POST["fk_list_news_id"];
			$description = $_POST["description"];
			$hot_news = isset($_POST["hot_news"])? 1:0;
			$img = "";
			if($_FILES["img"]["name"]!=""){
				//lấy tên file gán vào một biến
			$img = time().$_FILES["img"]["name"];
			move_uploaded_file($_FILES["img"]["tmp_name"], "public/upload/news/$img");
			}
			model::execute("insert into news set name='$name', description='$description',content='$content', fk_list_news_id=$fk_list_news_id,  hot_news=$hot_news, img='$img'");
			//quay tro lai news
			header("location:admin.php?controller=news");
		}	
		//delete news
		public function delete($id){
			model::execute("delete from news where pk_news_id=$id");
			//quay tro lai controller news
			header("location:admin.php?controller=news");
		}	
	}
	new controller_news();
 ?>