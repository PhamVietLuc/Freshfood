<?php 
	class controller_list_news{
		public function __construct(){
			//lay bien action truyen tu url
			$action = isset($_GET["action"])?$_GET["action"]:"";
			switch($action){				
				case "edit":
					//chuc nang sua ban ghi
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//goi ham de thuc hien chuc nang edit
					$this->edit_list_news($id);
				break;
				case "do_edit":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//goi ham do_edit de update ban ghi
					$this->do_edit($id);
				break;
				case "add":
					//goi ham de thuc hien chuc nang edit
					$this->add_list_news();
				break;
				case "do_add":
					//goi ham do_add de add ban ghi
					$this->do_add();
				break;
				case "delete":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//goi ham delete list_news
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
			$total_record = model::num_rows("select pk_list_news_id from list_news where parent_id=0");
			//tinh so trang
			$num_page = ceil($total_record/$record_per_page);
			//lay bien p truyen tu url (bien nay se chi trang hien tai)
			$p = isset($_GET["p"])&&$_GET["p"]>0 ? $_GET["p"]-1:0;
			//xac dinh lay tu ban ghi nao
			$from = $p*$record_per_page;
			//sql
			$data = model::list_all("select * from list_news where parent_id=0 order by pk_list_news_id desc limit $from,$record_per_page");
			//load view
			include "view/backend/list_news.php";
			//-----
		}
		//edit list_news
		public function edit_list_news($id){
			//tao bien form_action de dieu phoi thuoc tinh action cua the form
			$form_action = "admin.php?controller=list_news&action=do_edit&id=$id";
			//lay mot ban ghi tuong ung voi id truyen vao
			$record = model::get_a_record("select * from list_news where pk_list_news_id=$id");
			//load view
			include "view/backend/add_edit_list_news.php";
		}
		//add list_news
		public function add_list_news(){
			//tao bien form_action de dieu phoi thuoc tinh action cua the form
			$form_action = "admin.php?controller=list_news&action=do_add";
			//load view
			include "view/backend/add_edit_list_news.php";
		}
		//do_edit
		public function do_edit($id){
			$name = $_POST["name"];
			$parent_id = $_POST["parent_id"];
			model::execute("update list_news set name='$name', parent_id=$parent_id where pk_list_news_id=$id");
			//quay tro lai controller list_news
			header("location:admin.php?controller=list_news");
		}
		//do_add
		public function do_add(){
			$name = $_POST["name"];
			$parent_id = $_POST["parent_id"];
			model::execute("insert into list_news set name='$name', parent_id=$parent_id");
			//quay tro lai controller list_news
			header("location:admin.php?controller=list_news");
		}	
		//delete list_news
		public function delete($id){
			model::execute("delete from list_news where pk_list_news_id=$id");
			//quay tro lai controller list_news
			header("location:admin.php?controller=list_news");
		}	
	}
	new controller_list_news();
 ?>