<?php 
	class controller_slide_1{
		public function __construct(){
			//lay bien action truyen tu url
			$action = isset($_GET["action"])?$_GET["action"]:"";
			switch($action){				
				case "edit":
					//chuc nang sua ban ghi
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//goi ham de thuc hien chuc nang edit
					$this->edit_slide_1($id);
				break;
				case "do_edit":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//goi ham do_edit de update ban ghi
					$this->do_edit($id);
				break;
				case "add":
					//goi ham de thuc hien chuc nang edit
					$this->add_slide_1();
				break;
				case "do_add":
					//goi ham do_add de add ban ghi
					$this->do_add();
				break;
				case "delete":
					$id = isset($_GET["id"])?$_GET["id"]:0;
					//goi ham delete slide_1
					$this->delete($id);
				break;
				default:
					$this->list_slide_1();
				break;
			}
		}
		public function list_slide_1(){
			//-----
			//phan trang
			//quy dinh so ban ghi tren mot trang
			$record_per_page = 6;
			//tinh tong so ban ghi
			$total_record = model::num_rows("select slide_id_1 from slide_1");
			//tinh so trang
			$num_page = ceil($total_record/$record_per_page);
			//lay bien p truyen tu url (bien nay se chi trang hien tai)
			$p = isset($_GET["p"])&&$_GET["p"]>0 ? $_GET["p"]-1:0;
			//xac dinh lay tu ban ghi nao
			$from = $p*$record_per_page;
			//sql
			$data = model::list_all("select * from slide_1 order by slide_id_1 desc limit $from,$record_per_page");
			//load view
			include "view/backend/slide_1.php";
			//-----
		}
		//edit slide_1
		public function edit_slide_1($id){
			//tao bien form_action de dieu phoi thuoc tinh action cua the form
			$form_action = "admin.php?controller=slide_1&action=do_edit&id=$id";
			//lay mot ban ghi tuong ung voi id truyen vao
			$record = model::get_a_record("select * from slide_1 where slide_id_1=$id");
			//load view
			include "view/backend/add_edit_slide_1.php";
		}
		//add slide_1
		public function add_slide_1(){
			//tao bien form_action de dieu phoi thuoc tinh action cua the form
			$form_action = "admin.php?controller=slide_1&action=do_add";
			//load view
			include "view/backend/add_edit_slide_1.php";
		}
		//do_edit
		public function do_edit($id){
			// nếu người dùng chọn file upload 
			if($_FILES["img"]["name"]!=""){
				//lấy tên file gán vào một biến
				$img = time().$_FILES["img"]["name"];
				move_uploaded_file($_FILES["img"]["tmp_name"], "public/upload/slide_1/$img");
				//update bản ghi
				model::execute("update slide_1 set img='$img' where slide_id_1=$id");
			}
			//quay tro lai controller slide_1
			header("location:admin.php?controller=slide_1");
		}
		//do_add
		public function do_add(){
			$img = "";
			if($_FILES["img"]["name"]!=""){
				//lấy tên file gán vào một biến
			$img = time().$_FILES["img"]["name"];
			move_uploaded_file($_FILES["img"]["tmp_name"], "public/upload/slide_1/$img");
			}
			model::execute("insert into slide_1 set img='$img'");
			//quay tro lai slide_1
			header("location:admin.php?controller=slide_1");
		}	
		//delete slide_1
		public function delete($id){
			model::execute("delete from slide_1 where slide_id_1=$id");
			//quay tro lai controller slide_1
			header("location:admin.php?controller=slide_1");
		}	
	}
	new controller_slide_1();
 ?>